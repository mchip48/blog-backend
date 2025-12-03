class PostsController < ApplicationController
  # callback
  before_action :authenticate_user, except: [:index]
  # after_action is available too
  def index
    posts = Post.all.order(:id)
    render json: posts
    pp current_user
  end

  def create
    post = Post.new(
      title: params[:title],
      body: params[:body],
      image: params[:image],
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
