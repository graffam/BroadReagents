class CreateMachineKitCompatabilities < ActiveRecord::Migration
  def change
    create_table :machine_kit_compatabilities do |t|
      t.integer :kit_id, null: false
      t.integer :machine_id, null: false
    end
  end
end
