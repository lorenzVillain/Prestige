class ProductsController < ApplicationController


 before_action :set_product, only:[:show, :index, :new, :create]
 def new
   @product = product.new
 end

 def index
  if params[:category]
    type = params[:category]
    @products = Product.where(category: type)
  else
    @products = Product.all
  end
 end

 def show
   @product = Product.find(params[:id])
 end

 def create
   @product = Product.new(product_params)
   if @product.save
     flash[:notice] = 'your product was created'
     redirect_to_products_path
   else
     flash[:notice] = 'Oops something went wrong'
     render 'new'
   end
 end

 private

 def product_params
  params.require(:product).permit(:title, :category, :description, :brand, :user_id, :price, :gender)
 end

 def set_product
 end

end
