class Share < ActiveRecord::Base
  has_many :documents
  accepts_nested_attributes_for :documents
  before_create :generate_token

  protected

  def generate_token
    self.url_string = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Share.exists?(url_string: random_token)
    end
  end
end
