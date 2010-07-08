class PostsController < ApplicationController
  before_filter :load_post, :only => [:show, :edit, :update]

  def index
    @posts = Post.find(:all)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to(post_path(@post))
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to(post_path(@post))
    else
      render :edit
    end
  end

  protected

  def load_post
    @post = Post.find(params[:id])
  end
end
