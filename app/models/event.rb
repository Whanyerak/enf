class Event < ApplicationRecord
  validates :title, presence: true
  validates :happen_on, presence: true
end
