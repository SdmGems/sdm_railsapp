class SessionsController < ApplicationController
  def new
  end

  def create
    usertests = Usertest.find_by_email(params[:email])
    if usertests && usertests.authenticate(params[:password])
      session[:user_id] = usertests.id
      redirect_to root_url, notice: 'Logged in!'
    else
      render :new
  end
 end
 
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
