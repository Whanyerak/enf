class Event < ApplicationRecord
  validates :title, presence: true
  validates :happen_on, presence: true

  def upcoming?
    happen_on > DateTime.now
  end
end
