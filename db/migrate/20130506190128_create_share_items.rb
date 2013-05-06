class CreateShareItems < ActiveRecord::Migration
  def change
    create_table :share_items do |t|
      t.string :name
      t.text :description
      t.string :key

      t.timestamps
    end
  end
end
