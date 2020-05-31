class SiteController < ApplicationController
  def home
    @images = Image.where(private: false).find_each

  end
  def upload
  end
  def private
    @images = Image.where(private: true).find_each

  end
end
