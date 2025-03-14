class User < ApplicationRecord
  belongs_to :user_type
  has_many :progresses, dependent: :destroy
  has_many :tasks, through: :progresses
  has_many :notes

  enum :user_role, [ :user, :admin ]
end
