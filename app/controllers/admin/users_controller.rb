class Admin::UsersController < Admin::BaseController
  
  # before_filter :find_user, :only => [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all(:order  => "email")
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User has been created."
      redirect_to admin_users_path
    else
      flash[:alert] = "User has not been created."
      render :action  => "new"
    end
  end
  
  # def show
  # end

# private
#   def find_user
#     @user =  User.find(params[:id])
#   end
end
