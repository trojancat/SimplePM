class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string      :subject
      t.text        :message
      t.integer     :status
      t.belongs_to  :sended, class_name: User
      t.belongs_to  :accepted, class_name: User
      t.timestamps
    end
  end
end
