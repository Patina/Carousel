class ImagesController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show, :destroy]
  
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def show
  end

  def create
    @image = Image.create(params[:image])
    if @image.save #shoud it be image? and not @image??
      redirect_to @image, notice: "New picture created."
    else 
      render :new
    end
  end

  def update
    @image = Image.update(params[:image])
    redirect_to @image, notice: "Image updated."
  else
    render :edit
  end

  def destroy
    @image.destroy
    redirect_to images_path, notice: "Picture deleted."
  end

private

def set_user
  @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:avatar)
  end
end




