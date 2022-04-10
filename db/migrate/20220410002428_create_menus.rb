class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :title
      t.text :caption
      t.string :price
      t.boolean :status, default: false, null: false

      t.timestamps
    end
  end
end
