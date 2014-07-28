class MeetingEntry < ActiveRecord::Base
  belogs_to               :owner, class_name: User
  belogs_to               :meeting
end
