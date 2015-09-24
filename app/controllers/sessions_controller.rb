class SessionsController < ApplicationController
  def new_user
  end

  def new_admin

  end

  def create_user
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.password == (params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in_user user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new_user'
    end
  end

  def create_admin
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.password == (params[:session][:password])
      # Log the admin in and redirect to the admin's show page.
      log_in_admin admin
      redirect_to admin
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new_admin'
    end
  end

  def destroy
    log_out
    redirect_to welcome_home_path
  end
end
