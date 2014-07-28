class Task < ActiveRecord::Base
  belongs_to project
  belongs_to owned, class_name: User
end
