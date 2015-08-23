class SerifsController < ApplicationController
  before_filter :authenticate!, only: [:create, :destroy, :update]
  def index
    @serifs = Serif.all.order(id: :desc)
  end
  def create
    serif = Serif.new(serif_params)
    serif.save!
    if request.xhr?
      head :created
    else
      redirect_to serifs_path
    end
  end
  def destroy
    serif = Serif.find(params[:id])
    serif.destroy
    if request.xhr?
      head :no_content
    else
      redirect_to serifs_path
    end
  end
  def update
    serif = Serif.find(params[:id])
    if serif.update_attributes(serif_params)
      redirect_to serifs_path
    else
      redirect_to serifs_path
    end
  end
  private
  def serif_params
    params.permit(:text)
  end
end
