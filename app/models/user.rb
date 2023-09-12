class User < ApplicationRecord
  has_many :events
  has_many :events, through: :user_events

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
