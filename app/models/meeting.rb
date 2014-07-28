class Meeting < ActiveRecord::Base
  has_and_belongs_to_many :users
  belogs_to               :owner, class_name: User
  belogs_to               :project
end
