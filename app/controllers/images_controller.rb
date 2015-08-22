class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def create
    raise "Error" unless params[:image].present?
    ActiveRecord::Base.transaction do
#      @photo = Photo.new(photo_params)
#      @photo.user = current_user
#      @photo.save!

      image = Image.new
      image.image = params[:image]
      image.save!
    end
    redirect_to "/"
  end

  def destroy
  end

  def update
  end

  private

  def image_params
  end
end
