class UsersController < ApplicationController
  def show
    @user = current_user
    @user_urls = @user.urls
  end
end
