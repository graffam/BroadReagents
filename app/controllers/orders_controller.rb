class OrdersController < ApplicationController
  def index
    @orders =  Order.all
    @user = current_user
  end

  def show

  end

  def new
    @order = Order.new

  end

  def create

  end



end
