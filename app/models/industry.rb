class Industry < ApplicationRecord
  has_many :users
  has_many :users, through: :industry_users
end
