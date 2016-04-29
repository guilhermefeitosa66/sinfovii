class CreateMinhainscricaos < ActiveRecord::Migration
  def change
    create_table :minhainscricaos do |t|

      t.timestamps null: false
    end
  end
end
