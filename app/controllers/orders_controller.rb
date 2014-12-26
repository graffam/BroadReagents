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
      @machine = Machine.find_by(id: params["machine_id"])
      @kits = @machine.kits
      @kits.length.times {@order.listitems.build}
    else
      @machines = Machine.all
    end

  end

  def create
    binding.pry
  end

  def order_params
    params.require(:order).permit(:machine_id, :comment, :needed_by, listitems_attributes: [:id, :amount])
  end


end
