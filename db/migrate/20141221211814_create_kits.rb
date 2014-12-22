class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :kitname, null: false
    end
  end
end
