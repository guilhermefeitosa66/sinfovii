class CreatePanelists < ActiveRecord::Migration
  def change
    create_table :panelists do |t|
      t.string :article
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
