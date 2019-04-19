class ProductsController < ApplicationController
before_action :authenticate_user!
before_action :admin_only!

layout 'admin'


def index
	@products = Product.all
end

def new
	@product = Product.new
end

def create
	@product = Product.new(product_params)
	if @product.save
		flash[:notice] = "product was successfully created"
		redirect_to   product_path(@product)
  else
  	render 'new'
  end 
end

def show
	@product = Product.find(params[:id])
end

def edit
	@product = Product.find(params[:id])
end

def update
	@product = Product.find(params[:id])
	if @product.update(product_params)
		flash[:notice] = "Product was successfully updated"
		redirect_to product_path(@product)
	else
		render 'edit'
	end
end

def destroy
	@product = Product.find(params[:id])
	@product.destroy
	flash[:notice] = "product successfully deleted"
	redirect_to products_path
end

private
def product_params
  params.require(:product).permit(:name, :price)
end
end