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
  end

  def charts
    @companies          = Company.all
    # bar chart
    gon.company_names   = @companies.pluck(:name)
    gon.female_eng_nums = @companies.pluck(:num_female_eng)
    gon.male_eng_nums   = @companies.map {|company| company.num_eng - company.num_female_eng }
  end
end