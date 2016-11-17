class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :amount
      t.references :user, foreign_key: true, index: true
      t.references :product, foreign_key: true, index: true

      t.timestamps
    end
  end
end
