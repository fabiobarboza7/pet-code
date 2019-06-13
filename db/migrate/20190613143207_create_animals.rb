class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.decimal :monthly_cost, :precision => 8, :scale => 2
      t.references :animal_kind, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
