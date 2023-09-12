class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :user_events

  def friendly_date
    date.strftime("%A, %d %b %Y %l:%M %p")
  end
end
