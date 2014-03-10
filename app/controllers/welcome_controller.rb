class WelcomeController < ApplicationController
  def index
    @user_urls = current_user.urls if current_user
  end
end
