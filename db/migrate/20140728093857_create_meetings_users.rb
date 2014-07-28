class CreateMeetingsUsers < ActiveRecord::Migration
  def change
    create_table :meetings_users, id: false do |t|
      t.references  :meeting
      t.references  :user
    end
  end
end
