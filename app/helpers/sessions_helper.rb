module SessionsHelper
  #user specific methods
  def user_login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_logged_in?
    !current_user.nil?
  end

  def logout_user
    session.delete(:user_id)
    @current_user = nil
  end

  def logged_in_user
    unless user_logged_in?
      flash[:error] = "You are not logged in.Try again"
      redirect_to login_user_url
    end
  end

  def verify_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path
    end
  end


  def admin_login(admin)
    session[:admin_id] = admin.id
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def admin_logged_in?
    !current_admin.nil?
  end

  def logout_admin
    session.delete(:admin_id)
    @current_admin = nil
  end


  def logged_in_admin
    unless admin_logged_in?
      flash[:error] = "You must be logged in as an admin to perform this action. Please log in and try again"
      redirect_to login_admin_url
    end
  end

  def verify_admin
    @admin = Admin.find(params[:id])
    redirect_to root_path unless @admin == current_admin
  end
end

