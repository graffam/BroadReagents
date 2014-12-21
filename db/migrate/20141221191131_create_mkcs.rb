class CreateMkcs < ActiveRecord::Migration
  def change
    create_table :mkcs do |t|
      t.integer :kit_id, null: false
      t.integer :machine_id, null: false  
    end
  end
end
