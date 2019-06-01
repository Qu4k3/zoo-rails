class AddAnimalPhotoToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :animal_photo, :string
  end
end
