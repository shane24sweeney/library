class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_filter do |c|
    User.current_user = c.session[:user].present? ? User.find(c.session[:user]) : nil
  end

  def home
    @user = User.new
  end

  def index

  end

end
