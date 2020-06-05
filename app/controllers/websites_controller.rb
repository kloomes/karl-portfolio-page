class WebsitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, ]

  def index
    @websites = Website.all
  end
end
