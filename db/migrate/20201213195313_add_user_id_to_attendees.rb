class AddUserIdToAttendees < ActiveRecord::Migration[5.2]
  def change
    add_column :attendees, :user_id, :integer
  end
end
