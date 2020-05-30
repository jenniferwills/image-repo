class FilesController < ApplicationController

  def upload
    image = Image.create!(image_params)
    redirect_to(root_path)

  end

  private

    def image_params
      params.permit(:title, :tags, :file)

    end
end
