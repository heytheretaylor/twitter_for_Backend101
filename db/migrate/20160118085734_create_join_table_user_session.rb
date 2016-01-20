class CreateJoinTableUserSession < ActiveRecord::Migration
  def change
    create_join_table :users, :sessions do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
