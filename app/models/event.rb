class Event < ApplicationRecord
  validates :name, :service, presence: true

  belongs_to :schedule
end
