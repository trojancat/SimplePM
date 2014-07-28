class Project < ActiveRecord::Base
  has_many                :meetings
  belogs_to               :owner, class_name: User
end
