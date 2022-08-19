class UsersController < ApplicationController
  def edit
    
  end
  def show
    @user = User.find(params[:id])
    @uuser_image = @user.post_iamges
  end
end
