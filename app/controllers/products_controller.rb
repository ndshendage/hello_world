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
    @products = Product.all
    p "before create = #{@products.count}"
    @product = Product.create(product_params)
    p "after create = #{@products.count}"
    flash[:notice]= "Created successfully" 
    p "#{notice}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @products = Product.all
    @product = Product.find(params[:id])
    
    @product.update_attributes(product_params)
  end

  def delete
    @product = Product.find(params[:id])
  end

  def destroy
    @products = Product.all
    p "before destroy = #{@products.count}"
    @product = Product.find(params[:id])
    @product.destroy
    p "after destroy = #{@products.count}"
  end

private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end