class CreateCaves < ActiveRecord::Migration[5.2]
  def change
    create_table :caves do |t|
      
      t.string :name
      t.text :caption
      t.string :phone_number
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
