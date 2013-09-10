class AddItemToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :item, :string
  end
end
