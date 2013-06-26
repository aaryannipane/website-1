class UsersController < ApplicationController
  respond_to :html
  skip_authorization_check only: :activate
  load_and_authorize_resource except: :activate

  expose(:user)
  expose(:users)

  def activate
    if (user = User.load_from_activation_token(params[:id]))
      user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated. Now you can login')
    else
      not_authenticated
    end
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if user.save
      flash[:notice] = "User successfully created."
    end
    redirect_to root_path, notice: "You'll receive an email to validate your sign up"
  end

  def update
    if user.update(user_params)
      flash[:notice] = "User successfully created."
    end
    respond_with(user)
  end

  def destroy
    user.destroy
    respond_with(user)
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
