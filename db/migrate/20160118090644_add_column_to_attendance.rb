class AddColumnToAttendance < ActiveRecord::Migration
  def change
  	add_column :attendances, :session_id, :integer
    add_column :attendances, :user_id, :integer
  end
end
