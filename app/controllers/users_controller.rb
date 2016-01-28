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
    # @user = current_user # move this into a before filter
    # TO DELTE: get around when github is down
    @user = User.first
  end

  def create
  end

  def update
    binding.pry
    # TO DELTE: get around when github is down
    @user = User.first
    @user.display_name = params[:user][:display_name]
    @user.programming_language_id = params[:user][:programming_language_id]
    @user.salary = params[:user][:salary].to_f
    thought = Thought.new(user_id: @user.id)

  end
end