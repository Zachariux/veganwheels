class OrderItemsController < ApplicationController
    before_action :set_menu_item, only: [ :new, :create ]

    def new
        @order_item = OrderItem.new
    end

    def create
        @order_item = OrderItem.new(order_item_params)
        @cart = current_cart
        @order_item.cart = @cart
        @order_item.menu_item = @menu_item
        @order_item.save
        session[:cart_id] = @cart.id
    end

    private

    def order_item_params
        params.require(:order_item).permit(:quantity, :note, :unit_price_cents, :total_price_cents,
                     order_item_options_attributes: [:menu_option_id])
    end

    def set_menu_item
        @menu_item = MenuItem.find(params[:menu_item_id])
    end

end
