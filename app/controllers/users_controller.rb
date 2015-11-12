class UsersController < ApplicationController

  def new
  end

  def create
  	user = User.create(user_params)
    session[:user_id] = user.id

    
    redirect_to user_path(user)
  end

  def show
  	@user = User.find(session[:user_id])
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end
