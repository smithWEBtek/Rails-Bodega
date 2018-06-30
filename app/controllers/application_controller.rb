class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :require_logged_in, except: [:new, :create, :home]

  def logged_in?
    # makes sure the current user is logged in
    !!current_user
  end

  private

  def require_logged_in
    # if user isn't logged in redirect them to the login page
    redirect_to root_path unless logged_in?
  end

  def current_user
    # If the session has the user_id stored, save it to the instance variable current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
