class CreateSnowboards < ActiveRecord::Migration[5.1]
  def change
    create_table :snowboards do |t|
      t.string :name
      t.string :brand
      t.integer :length
      t.integer :user_id
    end
  end
end
