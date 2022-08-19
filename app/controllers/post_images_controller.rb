class PostImagesController < ApplicationController
  def index
    @post_images = Post_iamge.all
  end
  def new
    @post_image = Post_iamge.new
  end
  def create
    post_iamge = Post_image.new(post_iamge_params)
    post_iamge.save
    redirect_to
  end
  def show
    @post_iamge = Post_image.find(params[:id])
  end
  
  # private
  # # def post_iamge_params
  # #   params.require(:post_iamge),permit()
  # # end
end
