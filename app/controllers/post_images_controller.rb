class PostImagesController < ApplicationController
  def index
    @post_images = PostImage.all
  end
  def new
    @post_image = PostImage.new
  end
  def create
    @post_image = PostImage.new(post_iamge_params)
    @post_image.user_id = current_user.id
     if @post_image.save
      redirect_to post_images_path
     else
      render "new.html.erb"
     end
  end
  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  def destroy 
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end
  private
  def post_iamge_params
    params.require(:post_image).permit(:shop_name, :caption, :image)
  end
end
