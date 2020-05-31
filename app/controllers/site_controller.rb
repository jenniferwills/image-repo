class SiteController < ApplicationController
  def home
    @images = Image.find_each

  end
  def upload
  end
  def private
    @images = Image.find_each

  end
end
