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
    if params["machine_id"]
      @kits = Kit.find_by(machine_id: params["machine_id"])
    else
      @machines = Machine.all
    end

  end

  def create

  end



end
