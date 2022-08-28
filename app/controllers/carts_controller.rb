class CartsController < ApplicationController
  before_action :authenticate_user!

  def update
    product = params[:cart][:product_id].to_i
		quantity = params[:cart][:quantity].to_i 

	  current_order.add_product(product, quantity)

		redirect_to root_path, notice:  'Product added  successfully'
  end

  def show
    @order = current_order
  end
end
