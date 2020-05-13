class PostsController < ApplicationController
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  
end
