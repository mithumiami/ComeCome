class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.date :date
      t.time :time
      t.string :member
      t.integer :status

      t.timestamps
    end
  end
end
