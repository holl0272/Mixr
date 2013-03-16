class CreateCocktailsTable < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :image
      t.text :description
      t.timestamps
    end
  end
end
