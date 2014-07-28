class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string      :title
      t.text        :description
      t.belongs_to  :owned, class_name: User
      t.integer     :status
      t.datetime    :started_at
      t.datetime    :ended_at
      t.timestamps
    end
  end
end
