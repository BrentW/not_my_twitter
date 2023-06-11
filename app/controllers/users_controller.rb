class UsersController
def show
@user = User.find(params[:id])
@tweets = @user.tweets
@followers = @user.followers
@following = @user.following
end
def new
@user = User.new
end
def create
@user = User.new(user_params)
if @user.save
redirect_to @user, notice: 'User was successfully created.'
else
render :new
end
end
private
def user_params
params.require(:user).permit(:name, :username, :password)
end
end