class OrdersController < ApplicationController
  def index
    @orders =  Order.all
    @user = current_user
    @machines = Machine.all
  end

  def show

  end

  def new
    @order = Order.new
    @machines = Machine.all

  end

  def create

  end



end
