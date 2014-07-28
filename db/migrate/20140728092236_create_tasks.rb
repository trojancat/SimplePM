class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string      :title
      t.text        :description
      t.belongs_to  :owned, class_name: User
      t.belongs_to  :project
      t.integer     :status
      t.datetime    :started_at
      t.datetime    :ended_at
      t.timestamps
    end
  end
end
