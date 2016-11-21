class AddMinBidToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :min_bid, :integer
  end
end
