class UsersController < ActionController::Base

  def new

  end

  def create
    p params
    p user_params
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/proposals'
    else
      redirect_to '/users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :title, :email, :password, :password_confirmation)
  end
end
