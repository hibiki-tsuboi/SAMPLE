class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :series, null: false
      t.string :type_number, null: false
      t.string :item_name, null: false
      t.integer :tax_excluded, null: false
      t.integer :tax_included, null: false
      t.text :special
      t.references :color, foreign_key: true, null: false
      t.references :contact, foreign_key: true, null: false

      t.timestamps
    end
  end
end
