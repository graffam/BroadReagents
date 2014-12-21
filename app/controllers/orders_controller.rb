class OrdersController < ApplicationController
  def index
    @orders =  Order.all
    @user = current_user
  end

  def show

  end

  def new

  end

  def create

  end



end
