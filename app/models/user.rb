class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many                :projects
  has_many                :tasks
  has_many                :messages
  # Организованные пользователем совещания
  has_many                :owned_meetings, foreign_key: :owner_id
  # Все совещания, в которых участвует
  has_and_belongs_to_many :meetings
  # Сообщания пользователя в соотвещаниях
  has_many                :meeting_entries
  # Отправленные сообщения
  has_many                :sended_massages, foreign_key: :sended_id
  # Полученные сообщения
  has_many                :sended_massages, foreign_key: :accepted_id
end
