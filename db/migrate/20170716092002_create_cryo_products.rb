class CreateCryoProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cryo_products do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
