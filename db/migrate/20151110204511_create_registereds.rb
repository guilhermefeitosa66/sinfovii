class CreateRegistereds < ActiveRecord::Migration
  def change
    create_table :registereds do |t|
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
