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
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product Saved!"
      redirect_to "/products"
    else
      render :new
    end
  end

  def edit
     @product = Product.find(params[:id])
  end

  def destroy
    @product = Produt.find(params[:id])
    @product.destroy
    flash[:alert] = "Product Deleted!"
    redirect_to "/products"
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(prpduc_params)
      flash[:notice] = "Product Updated!"
      redirect_to @product
    else
      redirect_back_or_to @product
    end
  end

    def product_params
      params.require(:product).permit(:name, :description, :price_in_cents)
    end

end
