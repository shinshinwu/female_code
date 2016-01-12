class CompaniesController < ApplicationController

  def charts
    @companies          = Company.all
    # bar chart
    gon.company_names   = @companies.pluck(:name)
    gon.female_eng_nums = @companies.pluck(:num_female_eng)
    gon.male_eng_nums   = @companies.map {|company| company.num_eng - company.num_female_eng }
    # pie chart
    total_num_females   = @companies.sum(:num_female_eng)
    total_num_engineers = @companies.sum(:num_eng)
    total_num_males     = total_num_engineers - total_num_females
    female_percentage   =  total_num_females / total_num_engineers.to_f
    gon.female_percentage    = female_percentage
    gon.female_engineers_num = total_num_females.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    gon.male_percentage      = 1 - female_percentage
    gon.male_engineers_num   = total_num_males.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end
end