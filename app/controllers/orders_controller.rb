class OrdersController < ApplicationController
    
  def index
    @orders = Order.order("purchased_at desc").page(params[:page]).per_page(10)
  end
  
  private
  
    def order_params
      params.require(:order).permit(:price, :purchased_at, :shipping)
    end
  
end
