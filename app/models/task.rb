class Task < ActiveRecord::Base
  belogs_to               :project
  belogs_to               :owner, class_name: User
end
