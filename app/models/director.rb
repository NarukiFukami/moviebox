class Director < ApplicationRecord
  has_many :filmdetails

validates :name, presence: true
validates :country, presence: true

scope :by_new, ->{ order(updated_at: :desc) }
end
