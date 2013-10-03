class Document < ActiveRecord::Base
  belongs_to :share
  mount_uploader :item, ItemUploader

  def self.old_doc_getter
    Document.where("created_at > ?", 3.days.ago)
  end

end
