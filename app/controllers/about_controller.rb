class AboutController < ApplicationController
  def index
    flash[:information] = "inside About-us"
  end
end
