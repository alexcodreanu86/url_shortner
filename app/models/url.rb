# CODE REVIEW: Why no validations? (╯°□°)╯︵ ┻━┻
class Url < ActiveRecord::Base
  belongs_to :user

  before_create :generate_short_url


  def generate_short_url
    # CODE REVIEW: Potential for non-unique short urls
    self.short_url = SecureRandom.urlsafe_base64(4, false)
  end

end
