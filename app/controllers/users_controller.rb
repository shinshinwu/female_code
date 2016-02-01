class UsersController < ApplicationController

  def new
    @user = current_user
  end

  def show
    @user = current_user
  end

  def create
  end

  def update
    @user = current_user
    @user.display_name = params[:user][:display_name]
    @user.programming_language_id = params[:user][:programming_language_id]
    @user.salary = params[:user][:salary].to_f
    thought = Thought.new(user_id: @user.id, thoughts: params[:user][:thoughts])

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