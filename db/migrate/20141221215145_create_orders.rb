class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.string :comment
      t.datetime :needed_by
      t.string :status, default: "To Do"

      t.timestamps
    end
  end
end
