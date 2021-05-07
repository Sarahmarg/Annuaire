class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :user
      t.string :title
      t.text :description
      t.float :price
      t.text :adress
      t.float :phone
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
