class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :race
      t.belongs_to :zone
      t.integer :year_birth

      t.timestamps
    end
  end
end
