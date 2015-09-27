module SessionsHelper
  # Logs in the given user.
  def log_in_user(user)
    session[:user_id] = user.id
    session[:user_type] = 'user'
  end

  def log_in_admin(admin)
    session[:user_id] = admin.id
    session[:user_type] = 'admin'
  end

  #returns the current logged in user
  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user
    end
  end

  def current_admin
    if @current_admin.nil?
      @current_admin = Admin.find_by(id: session[:user_id])
    else
      @current_admin
    end
  end

  def logged_in_user?
    !current_user.nil?
  end

  def logged_in_admin?
    !current_admin.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:user_type)
    @current_user = nil
    @current_admin = nil
  end

end
