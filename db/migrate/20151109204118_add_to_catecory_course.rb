class AddToCatecoryCourse < ActiveRecord::Migration
  def change
  	add_column :courses, :category, :integer, default: 0
  end
end
