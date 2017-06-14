class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:id])
    if @product.save
      redirect_to "/products"
    else
      render :new
    end
  end

  def edit
  end

  def destory
  end

  def update
    # @product = Product.find(params[:id])
    # @product.update(product_params)
    # redirect_to "/"
  end

end
