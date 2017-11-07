class CreateItemContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :item_contacts do |t|
      t.references :item, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
