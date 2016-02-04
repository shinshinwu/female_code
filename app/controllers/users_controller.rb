class UsersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @user = current_user
  end

  def show
    @user = current_user
  end

  def create
  end

  def update
    @user                 = current_user
    @display_name         = params[:user][:display_name]
    @programming_language = ProgrammingLanguage.where(id: params[:user][:programming_language_id].to_i).first
    @salary               = params[:user][:salary]

    @user.display_name    = @display_name if @display_name
    @user.programming_language_id = @programming_language.id if @programming_language
    @user.salary          = @salary.to_f if @salary
    thought               = Thought.new(user_id: @user.id, thoughts: params[:user][:thoughts])

    if @user.save
        thought.save!
        flash[:notice] = "Thank you for submitting stats!"
        render 'show'
    else
        flash[:error]  = "Something has gone wrong with your submission"
        redirect :back
    end

  end
end