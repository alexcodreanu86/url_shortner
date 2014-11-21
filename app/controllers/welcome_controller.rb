class WelcomeController < ApplicationController
  def index
    # CODE REVIEW: I'd probably just use current_user.urls directly in my
    # template instead of assigning an instance variable. This is probably good
    # practice though
    @user_urls = current_user.urls if current_user
    @url = Url.new
  end
end
