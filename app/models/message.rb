class Message < ActiveRecord::Base
  # Отправитель
  # TODO с названием косяк получился
  belongs_to :sended, class_name: User
  # Получатель
  # TODO с названием косяк получился
  belongs_to :accepted, class_name: User
end
