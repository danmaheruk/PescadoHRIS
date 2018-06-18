class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.where(activated: true).paginate(page: params[:page], :per_page => 7)
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless true
    @infos = @user.infos.paginate(page: params[:page])
    @leaves = @user.leaves.paginate(page: params[:page])
    @info = current_user.infos.build if logged_in?
    @leave = current_user.leaves.build if logged_in?
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)                                                                                                                                                                                                                                                                                                            
    if @user.save
      flash[:success] = "User connected to system!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Information Updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
   User.find(params[:id]).destroy
   flash[:success] = "User deleted"
   redirect_to users_url
 end

 def admin
   @users = User.paginate(page: params[:page], :per_page => 5)
 end

 def admins
   @users = User.where(:admin => true)
 end

 def make_admin
   @user = User.find(params[:id])
   @user.update_attributes(:admin => true)
   flash[:success] = "This user is now an Administrator"
   redirect_to admin_url
 end

 def revoke_admin
   @user = User.find(params[:id])
   @user.update_attributes(:admin => false)
   flash[:success] = "Admin Level Revoked"
   redirect_to admin_url
 end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)

  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
#confirms admin user
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
