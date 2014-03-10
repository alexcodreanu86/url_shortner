class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = current_user.urls.new(url_params)
    if @url.save
      redirect_to root_path
    else
      flash[:fail]="Invalid url"
      render :new
    end
  end

  def show
    @url = Url.find(params[:id])
    redirect_to ("#{@url.long_url}")
  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    flash[:success]="Url deleted"
    redirect_to root_path
  end


  private
  def url_params
    params.require(:url).permit(:long_url)
  end
end
