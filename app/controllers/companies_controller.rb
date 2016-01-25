class CompaniesController < ApplicationController

  def new
    @user    = current_user
    @company = Company.new
    @company_size_tier = CompanySizeTier.all
    @countries = CS.get.map {|code, name| [name, code.to_s]}
    @states = CS.states(:us).map {|code, name| [name, code.to_s]}
    @cities = CS.cities(:ca)
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
    # TODO: need to think about how to standardize and sanitize the company url and name input
    # binding.pry
    @company = Company.where(url: params[:company][:url]).first || Company.new

    # TODO: if found a match, what should it do?
    if @company.persisted?
    # if not found, create a new row
    else
      @company.name           = params[:company][:name]
      @company.url            = params[:company][:url]
      @company.is_public      = params[:company][:is_public] == "true"
      @company.company_size_tier_id = params[:company][:company_size_tier_id]
      @company.num_eng        = params[:company][:num_eng]
      @company.num_female_eng = params[:company][:num_female_eng]
      # TODO: match the headquarter location
      if @company.save
        flash[:notice] = "Thanks for your contribution!"
        redirect_to user_path(current_user.id)
      else
        # TODO: be more specific with the error here
        flash[:notice] = "Sorry something went wrong with you submission"
        redirect_to :back
      end
    end
  end

  def charts
    @companies          = Company.all
    # bar chart
    gon.company_names   = @companies.pluck(:name)
    gon.female_eng_nums = @companies.pluck(:num_female_eng)
    gon.male_eng_nums   = @companies.map {|company| company.num_eng - company.num_female_eng }
  end
end