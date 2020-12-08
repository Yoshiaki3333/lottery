class RemoveNameFromAttendees < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendees, :name, :string
  end
end
