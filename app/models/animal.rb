class Animal < ApplicationRecord

    has_many :users
    belongs_to :zone

    validates :name
    validates :race
    validates :year_birth, numericality: { only_integer: true }
end
