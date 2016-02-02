require 'uri'
include SanitizeUrl

class CompaniesController < ApplicationController

  def index
    @company_stats           = CompanyStaffStat.approved
    # pie chart
    total_num_females        = @company_stats.sum(:num_female_eng)
    total_num_engineers      = @company_stats.sum(:num_eng)
    total_num_males          = total_num_engineers - total_num_females
    female_percentage        =  total_num_females / total_num_engineers.to_f
    gon.female_percentage    = female_percentage
    gon.female_engineers_num = total_num_females.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    gon.male_percentage      = 1 - female_percentage
    gon.male_engineers_num   = total_num_males.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end

  def new
    @user    = current_user
    @company = Company.new
    @company_size_tier = CompanySizeTier.all
    # let's delete a extra pair and move US, UK, CA to the top of the list
    countries_hash = CS.get.delete_if {|k, _| [:COUNTRY_ISO_CODE, :US, :GB, :CA].include? k }
    @countries = Hash[countries_hash.sort_by{|_, v| v}].map {|code, name| [name, code.to_s]}.unshift(["United States", "US"], ["United Kingdom", "GB"], ["Canada", "CA"])
  end

  def states
    @states = CS.states(params[:country_code])

    respond_to do |format|
      format.json { render json: @states }
    end
  end

  def cities
    @cities = CS.cities(params[:state_code])
    respond_to do |format|
      format.json { render json: @cities }
    end
  end

  def create
    # redirect user from this page if they are not signed in
    @user         = current_user

    # let's do some url sanitation and standardization so it's not a nightmare to store in db
    sanitized_url = sanitize_url(params[:company][:url].downcase.strip)

    if sanitized_url.is_valid_url?
      parsed_url  = URI.parse(sanitized_url)
    else
      parsed_url  = URI.parse("http://" + sanitized_url)
    end

    host_name     = parsed_url.host.scan(/^(www.)/).present? ? parsed_url.host : ("www." + parsed_url.host)

    @company = Company.where(url: host_name).first || Company.new
    @num_eng = params[:company][:company_staff_stat][:num_eng]
    @num_female_eng = params[:company][:company_staff_stat][:num_female_eng]

    # TODO: if found a match, what should it do?
    if @company.persisted?
      CompanyStaffStat.create(
        company_id: @company.id,
        user_id: @user.id,
        num_female_eng: num_female_eng,
        num_eng: num_eng
      )
    else
      ActiveRecord::Base.transaction do
        @company.name           = params[:company][:name].titleize
        @company.url            = host_name
        @company.is_public      = params[:company][:is_public] == "true"
        @company.company_size_tier_id = params[:company][:company_size_tier_id]

        @new_stat                = CompanyStaffStat.new(
          user_id: @user.id,
          num_female_eng: num_female_eng,
          num_eng: num_eng
        )

        city    = params[:company][:headquarter][:city]
        state   = params[:company][:headquarter][:state]
        country = params[:company][:headquarter][:country]
        # what if there is only country or only country and state?
        headquarter = Headquarter.where(city: city, state: state, country: country).first

        if headquarter.nil?
          new_headquarter         = Headquarter.new
          new_headquarter.city    = city
          new_headquarter.state   = state
          new_headquarter.country = country
          new_headquarter.save!
          @company.headquarter_id = new_headquarter.id
        else
          @company.headquarter_id = headquarter.id
        end

        if @company.save
          @user.company_id = @company.id
          @user.save!
          @new_stat.company_id = @company.id
          @new_stat.save!
          flash[:notice] = "Thanks for your contribution!"
          redirect_to user_path(current_user.id)
        else
          # TODO: be more specific with the error here
          flash[:notice] = "Sorry something went wrong with you submission"
          redirect_to :back
        end # end company.save
      end # end AR transaction
    end # end if/else

  end

  def charts
    @companies          = Company.all
    # bar chart
    gon.company_names   = @companies.pluck(:name)
    gon.female_eng_nums = @companies.pluck(:num_female_eng)
    gon.male_eng_nums   = @companies.map {|company| company.num_eng - company.num_female_eng }
  end
end