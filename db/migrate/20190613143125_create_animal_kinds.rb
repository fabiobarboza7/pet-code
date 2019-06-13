class CreateAnimalKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_kinds do |t|
      t.string :kind

      t.timestamps
    end
  end
end
