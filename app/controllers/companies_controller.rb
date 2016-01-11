class CompaniesController < ApplicationController

  def charts
    @companies = Company.all
    gon.company_names = @companies.pluck(:name)
    gon.female_eng_nums = @companies.pluck(:num_female_eng)
    gon.male_eng_nums = @companies.map {|company| company.num_eng - company.num_female_eng }
  end
end