class AddToShirtUser < ActiveRecord::Migration
  def change
  	add_column :users, :shirt, :string
  end
end
