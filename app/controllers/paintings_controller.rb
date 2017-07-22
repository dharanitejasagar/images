class PaintingsController < ApplicationController
  def index
  end

  def show
  end

  def edit
    
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.find(params[:id])

  end
  def update
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      redirect_to gallery_path(@gallery)
    else
      render 'edit'
    end
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @painting = @gallery.paintings.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @painting = @gallery.paintings.new(painting_params)
    if @painting.save
      redirect_to gallery_path(@gallery)
    else
      render 'new'
    end
  end


  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to gallery_path
  end
  def painting_params
    params.require(:painting).permit(:p_name, :name, :image, :gallery_id, :remote_image_url)
  end
end
