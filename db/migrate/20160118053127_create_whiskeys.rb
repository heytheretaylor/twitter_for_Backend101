class CreateWhiskeys < ActiveRecord::Migration
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.decimal :rating
      t.integer :times
      t.string :upc

      t.timestamps null: false
    end
  end
end
