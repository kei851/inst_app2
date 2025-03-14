class Progress < ApplicationRecord
  belongs_to :user
  belongs_to :task

  enum :status, [ :not_started, :waiting, :completed ]
end
