class Meeting < ActiveRecord::Base
  belongs_to              :owned, class_name: User
  belongs_to              :project
  has_and_belongs_to_many :users
end
