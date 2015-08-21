class MapobjectsController < ApplicationController

  def index
    @mapobjects = Mapobject.all.order(id: :desc)
  end

  def create
    if request.xhr?
      head :created
    else
      redirect_to mapobjects_path
    end
  end

  def destroy
    if request.xhr?
      head :no_content
    else
      redirect_to mapobjects_path
    end
  end
  def update
    mapobject = Mapobject.find(params[:id])
    if mapobject.update_attributes(mapobject_params)
      redirect_to mapobjects_path
    else
      redirect_to mapobjects_path
    end
  end

  def update
    mapobject = Mapobject.find(params[:id])
    if mapobject.update_attributes(mapobject_params)
      redirect_to mapobjects_path
    else
      redirect_to mapobjects_path
    end
  end

  private
  def mapobject_params
    params.permit(:name, :talkable, :movable)
  end
end
