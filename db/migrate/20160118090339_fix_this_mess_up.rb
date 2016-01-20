class FixThisMessUp < ActiveRecord::Migration
  def change
  	drop_table :sessions_users
  end
end
