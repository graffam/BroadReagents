class MachinesController < ApplicationController
  def index
    authenticate_user!
    @machines = Machine.all
  end


  def show


  end

end
