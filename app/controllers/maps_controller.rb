class MapsController < ApplicationController
  def index
    @maps = Map.all.order(id: :desc)
  end

  def show
  end

  def create
    map = Map.new(map_params)
    map.save!
    flash[:alert] = "created ok"
    if request.xhr?
      head :created
    else
      redirect_to maps_path
    end
  end

  def destroy
    map = Map.find(params[:id])
    map.destroy
    if request.xhr?
      head :no_content
    else
      redirect_to "/"
    end
  end

  def update
    map = Map.find(params[:id])
    if map.update_attributes(map_params)
      redirect_to maps_path
    else
      redirect_to maps_path
    end
    # redirect_to maps_path
  end

  private

  def map_params
    params.permit(:name, :width_tiles, :height_tiles)
  end
end
