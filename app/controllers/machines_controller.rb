class MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end


  def show


  end

end
