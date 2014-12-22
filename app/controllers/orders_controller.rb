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
        binding.pry
      @kits = @machine.kits
    else
      @machines = Machine.all
    end

  end

  def create

  end



end
