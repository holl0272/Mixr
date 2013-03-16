class CreateCocktailsUsersTable < ActiveRecord::Migration
  def change
    create_table :cocktails_users, :id => false do |t|
      t.integer :cocktail_id
      t.integer :user_id
    end
  end
end
