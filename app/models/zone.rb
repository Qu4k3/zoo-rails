class Zone < ApplicationRecord
  has_one :animal

  validates :name, presence: true
  validates :weather, presence: true
  validates :temperature, presence: true, numericality: true, :inclusion => -20..60
  validates :humidity, presence: true, numericality: true, :inclusion => 10..100
end
