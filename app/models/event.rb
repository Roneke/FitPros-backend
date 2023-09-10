class Event < ApplicationRecord
  belongs_to :user
  has_many :comments

  def friendly_date
    date.strftime("%A, %d %b %Y %l:%M %p")
  end
end
