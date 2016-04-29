class AddToPayRegistered < ActiveRecord::Migration
	def change
		add_column :registereds, :pay, :integer, :default => 0
	end
end
