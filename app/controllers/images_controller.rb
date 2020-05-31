class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end


  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    parameters =create_params
    parameters[:files].each do |f|
      tmp = {:title => parameters[:title], :private => parameters[:private], :tags => parameters[:tags], :file => f}

      @image = Image.create!(tmp)
      if !(@image.save)
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end


    end
    redirect_to root_path, notice: 'Image was successfully created.'
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(update_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.file.purge
    @image.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy_all
    @image.file.purge
    @image.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def download
    send_data @resume, type: "application/pdf", disposition: "attachment"
  end

  def download_all
    send_data @resume, type: "application/pdf", disposition: "attachment"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_params
      params.require(:files)
      # byebug
      params.require(:private)
      params.permit(:title, :tags, :private, files: [])
    end

    # Only allow a list of trusted parameters through.
    def update_params
      params.permit(:title, :tags, :private)
    end

end
