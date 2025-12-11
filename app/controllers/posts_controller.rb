class PostsController < ApplicationController
  # callback
  before_action :authenticate_user, except: [:index, :show]
  before_action :authorize_post_owner, only: [:update, :destroy]
  #anyone can see the data - index and show
  #only logged in users can create data
  #only admins/posts owner can update or destroy

  # after_action is available too
  def index
    posts = Post.all.order(:id)
    render json: posts
    # pp current_user
  end

  def create
    post = Post.new(
      title: params[:title],
      body: params[:body],
      image: params[:image],
      user_id: current_user.id
    )
    if post.save
      render json: post
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post
  end

  def update
    post = Post.find_by(id: params[:id])
    # binding.pry
    post.title = params[:title] || post.title
    post.body = params[:body] || post.body
    post.image = params[:image] || post.image
    if post.save
      render json: post
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: { message: "Post successfully destroyed!" }
  end
end
