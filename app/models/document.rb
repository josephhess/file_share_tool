class Document < ActiveRecord::Base
  belongs_to :share
  mount_uploader :item, ItemUploader
end
