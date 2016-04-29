class AddToColumnUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :cpf, :string
  	add_column :users, :birthday, :date
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  	add_column :users, :telephone, :string
  	add_column :users, :institution, :string
  end
end
