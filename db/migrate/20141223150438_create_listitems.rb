class CreateListitems < ActiveRecord::Migration
  def change
    create_table :listitems do |t|
      t.integer :order_id, null: false
      t.integer :kit_id, null: false
      t.integer :amount, null: false
    end
  end
end
