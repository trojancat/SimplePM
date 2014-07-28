class Project < ActiveRecord::Base
  has_many                :meetings
  belongs_to               :owner, class_name: User
end
