class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :machinename, null: false
    end
  end
end
