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

    Honeybadger.context({
      user_id:        @user.id,
      display_name:   params[:user][:display_name],
      programming_language: params[:user][:programming_language_id],
      salary:         params[:user][:salary],
      thought:        params[:user][:thoughts]
    })

    begin
      @user.save!
      thought.save!
      fail 'test'
      flash[:notice] = "Thank you for submitting stats!"
      render 'show'
    rescue => exception
      Honeybadger.notify(exception)
      flash[:error]  = "Something has gone wrong with your submission"
      render 'new'
    end

  end
end