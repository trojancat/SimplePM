class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many                :projects, foreign_key: :owned_id                                   # Проекты, на которые назначен пользователь в качестве ПМ
  has_many                :tasks, foreign_key: :owned_id                                      # Задачи, на которые назначен пользователь в качестве исполнителя
  has_many                :owned_meetings, foreign_key: :owned_id, class_name: Meeting        # Организованные пользователем совещания
  has_and_belongs_to_many :meetings                                                           # Все совещания, в которых участвует пользователь, как простой участник
  has_many                :meeting_entries, foreign_key: :owned_id, class_name: MeetingEntry  # Сообщения пользователя в соотвещаниях
  has_many                :sended_messages, foreign_key: :sended_id, class_name: Message      # Отправленные сообщения
  has_many                :accepted_messages, foreign_key: :accepted_id, class_name: Message  # Полученные сообщения
end
