class OrdersController < ApplicationController
  before_action :authenticate_user!
  def new
    @order = Order.new
  end

  def create
   @order = Order.new(order_params)
   @order.renter_id = current_user.id
   @order.product_id = order_params[:product_id]
   #assign product.owner_id to order.owner_id
   @order.owner_id = @product.owner_id
   if @order.save
     flash[:notice] = 'your order was created'
     redirect_to products_path
   else
     flash[:notice] = 'Oops something went wrong'
     render 'new'
   end
 end

 private

 def order_params
  params.require(:order).permit(:delivery_date, :return_date, :product_id)
 end

 def set_order
 end
end
