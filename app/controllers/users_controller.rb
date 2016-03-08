class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :show, :update]

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
    @user.email           = params[:user][:email]
    @user.gender          = params[:user][:gender]
    @user.programming_language_id = @programming_language.id if @programming_language
    @user.salary          = @salary.to_f if @salary
    thought               = if params[:user][:thoughts].present?
      Thought.new(user_id: @user.id, thoughts: params[:user][:thoughts])
    end

    Honeybadger.context({
      user_id:        @user.id,
      display_name:   params[:user][:display_name],
      email:          params[:user][:email],
      programming_language: params[:user][:programming_language_id],
      salary:         params[:user][:salary],
      thought:        params[:user][:thoughts]
    })

    begin
      @user.save!
      thought.save! if thought
      flash[:notice] = "Profile Successfully Saved!"
      render 'show'
    rescue => exception
      Honeybadger.notify(exception)
      flash[:error]  = "Something has gone wrong with your submission"
      render 'new'
    end

  end
end