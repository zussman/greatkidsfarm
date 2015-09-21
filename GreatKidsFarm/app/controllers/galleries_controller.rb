class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.create gallery_params
    if @gallery.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private
  def gallery_params
    params.require(:gallery).permit(:image, :title, :caption)
  end
end
