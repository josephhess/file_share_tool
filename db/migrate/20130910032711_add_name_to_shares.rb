class AddNameToShares < ActiveRecord::Migration
  def change
    add_column :shares, :name, :string
  end
end
