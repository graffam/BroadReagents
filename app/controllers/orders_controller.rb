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
      @counter = 0
      @machine = Machine.find_by(id: params["machine_id"])
      @kits = @machine.kits
      binding.pry
      @kits.length.times {@order.listitems.build}
    else
      @machines = Machine.all
    end

  end

  def create
    binding.pry
  end



end
