class UserType < ApplicationRecord
  has_many :users
  has_many :tasks
end
