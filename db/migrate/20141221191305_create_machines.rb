class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :machine_name, null: false
    end
  end
end
