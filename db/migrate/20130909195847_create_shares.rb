class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :email
      t.string :recipient_email
      t.text :message
      t.string :url_string

      t.timestamps
    end
  end
end
