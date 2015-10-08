class SessionsController < ApplicationController

  def new_user
    if user_logged_in?
      redirect_to current_user
    end
  end

  def create_user
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      user_login user
      flash[:success] = "Welcome to LibSys!"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid email password combination.Try again!"
      render 'new_user'
    end
  end

  def new_admin
    if admin_logged_in?
      redirect_to root_path
    end
  end

  def create_admin
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      admin_login admin
      flash[:success] = "Welcome Admin!"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid email password combination.Try again!"
      render 'new_admin'
    end
  end

  def destroy_user
    logout_user
    redirect_to root_url
  end

  def destroy_admin
  logout_admin
    redirect_to root_url
  end
end

