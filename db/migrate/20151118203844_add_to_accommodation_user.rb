class AddToAccommodationUser < ActiveRecord::Migration
  def change
  	add_column :users, :accommodation, :string
  
  end
end
