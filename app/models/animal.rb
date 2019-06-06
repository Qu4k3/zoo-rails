class Animal < ApplicationRecord
  has_many :users
  belongs_to :zone

  validates :name, presence: true
  validates :breed, presence: true
  validates :year_birth, numericality: { only_integer: true }

  mount_uploader :animal_photo, AnimalPhotoUploader
  # Animal photo validation
  validates_integrity_of :animal_photo
  validates_processing_of :animal_photo
  validates :animal_photo, file_size: { less_than: 5.megabytes }

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
