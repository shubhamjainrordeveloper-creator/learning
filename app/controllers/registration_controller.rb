class RegistrationController < ApplicationController
  def new
    flash[:information] = "Hi, are you new User, please sign up!"
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, information: "Successfully created user account!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
