class AddNameToAttendees < ActiveRecord::Migration[5.2]
  def change
    add_column :attendees, :name, :text
  end
end
