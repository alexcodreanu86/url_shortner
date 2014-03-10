class Url < ActiveRecord::Base
  belongs_to :user

  before_create :generate_short_url


  def generate_short_url
    self.short_url = SecureRandom.urlsafe_base64(4, false)
  end

end
