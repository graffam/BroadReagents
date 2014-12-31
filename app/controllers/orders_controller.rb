class OrdersController < ApplicationController
  def index
    @orders =  Order.all
    @user = current_user
    @machines = Machine.all
  end

  def show
    @machine = Machine.find_by id: params["machine_id"]
    @kits = @machine.kits
    @order = Order.find_by id: params["id"]
    binding.pry
  end

  def new
    @machine = Machine.find_by id: params["machine_id"]
    @kits = @machine.kits
    @order = Order.new
    @kits.each do |kit|
      @order.kit_orders.build(kit_id: kit.id)
    end
  end

  def create
    @machine = Machine.find_by id: params["machine_id"]
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.save
    @kit_orders = params[:order][:kit_orders_attributes]
    if @order.save
      @kit_orders.each_value do |kit_order|
        KitOrder.create(order_id: @order.id, kit_id: kit_order["kit_id"],
        amount: kit_order["amount"].to_i)
      end
      redirect_to machine_order_path(@machine,@order)
    else
      render "new"
    end
  end

  def order_params
    params.require(:order).permit(:machine_id, :comment, :needed_by,
    kit_order_attributes: [:id, :amount, :kit_id])
  end


end
