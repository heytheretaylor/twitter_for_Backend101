class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :date_of
      t.integer :whiskey
      t.integer :user_turn
      t.integer :attendance

      t.timestamps null: false
    end
  end
end
