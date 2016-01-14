class SessionsController < ApplicationController

  def show
    @user    = current_user
    @company = @user.company
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    if user.company
      render 'show'
    else
      redirect_to new_company_path, :notice => "Signed in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end