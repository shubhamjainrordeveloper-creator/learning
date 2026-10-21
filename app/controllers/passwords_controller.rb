class PasswordsController < ApplicationController
  before_action :require_login

  def edit
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "Password updated successfully."
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def require_login
    unless logged_in?
      redirect_to sign_in_path, alert: "You must be logged in to access this section."
    end
  end
end
