class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone
      # t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
