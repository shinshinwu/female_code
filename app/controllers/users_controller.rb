class UsersController < ApplicationController

  def new
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

  def show
    @user = current_user
  end

  def create
  end
end