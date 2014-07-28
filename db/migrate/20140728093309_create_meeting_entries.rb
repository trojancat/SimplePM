class CreateMeetingEntries < ActiveRecord::Migration
  def change
    create_table :meeting_entries do |t|
      t.text        :message
      t.belongs_to  :owned, class_name: User
      t.belongs_to  :meeting
      t.timestamps
    end
  end
end
