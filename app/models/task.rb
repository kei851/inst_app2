class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user_type, optional: true  # 種別によらない共通タスクも許可するのでoptional: trueをつけている
  has_many :progresses
  has_many :users, through: :progresses
  has_many :notes
end
