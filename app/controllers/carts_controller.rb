class CartsController < ApplicationController
  before_action :authenticate_user!

  def update
    product = parms[:cart][:product_id]
		quantity = params[:cart][:quantity_id] 

	  current_order.add_product(product, quantity)

		redirect_to root_path, notice:  ‘Product added  successfully’
  end

  def show
    @order = current_order
  end
end
