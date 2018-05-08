class Destination < ApplicationRecord
  # adding validations to these when a user adds them.
  validates :country, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :best_coffee, presence: true
end
