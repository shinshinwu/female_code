class CompaniesController < ApplicationController

  def new
    @user    = current_user
    @company = Company.new
    @company_size_tier = CompanySizeTier.all
    @countries = CS.get.map {|code, name| [name, code.to_s]}
    @us_states = CS.states(:us).map {|code, name| [name, code.to_s]}
    @ca_cities = CS.cities(:ca)
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