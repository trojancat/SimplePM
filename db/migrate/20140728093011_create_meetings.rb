class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string      :title
      t.integer     :status
      t.belongs_to  :owned, class_name: User
      t.belongs_to  :project
      t.datetime    :started_at
      t.datetime    :ended_at
      t.timestamps
    end
  end
end
