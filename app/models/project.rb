class Project < ActiveRecord::Base
  belongs_to  :owned, class_name: User
  has_many    :tasks
end
