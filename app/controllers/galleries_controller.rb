class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:edit, :update, :show, :destroy]

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def edit
  end

  def show
  end

  def create
    @gallery = Gallery.create(params[:gallery])
    if gallery.save
      redirect_to @gallery,notice: "New gallery created."
    else
      render :new
    end
  end

  def update
    @gallery = Gallery.update params(params[:user])
    redirect_to @gallery, notice: "Gallery updated."
  else
    render :edit
  end

  def destroy
  end


def set_gallery
  @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name, :body)
  end
end




