class WebsitesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.new(website_params)
    if @website.save
      redirect_to websites_path
    else
      render :new
    end
  end

  def edit
    @website = Website.find(params[:id])
  end

  def update
    @website = Website.find(params[:id])
    @website.update_attributes(website_params)
    @website.save
    redirect_to websites_path
  end

  def destroy
    @website = Website.find(params[:id])
    @website.destroy
    redirect_to websites_path
  end

  private

  def website_params
    params.require(:website).permit(
      :name,
      :full_website,
      :mobile_website,
      :description,
      :web_link,
      :github_link,
      :code_tags,
      :live,
      :favourite
    )
  end
end
