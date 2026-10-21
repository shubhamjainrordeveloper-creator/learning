class ApplicationController < ActionController::Base
  before_action :set_current_user

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  private

  def set_current_user
    Current.user = current_user
  end
end
