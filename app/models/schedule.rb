class Schedule < ApplicationRecord
  validates :name, presence: true

  has_many :events
end
