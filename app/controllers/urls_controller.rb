class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = current_user.urls.new(url_params)
    if @url.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @url = Url.find(params[:id])
    redirect_to ("#{@url.long_url}")
  end


  def url_params
    params.require(:url).permit(:long_url)
  end
end
