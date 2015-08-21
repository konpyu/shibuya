class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if ['development', 'test'].include?(Rails.env)
    storage :file
  else
    storage :fog
  end

  process :strip
  process :set_metadata
  process quality: 100

  def extension_white_list
    %w(png)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  def strip
    manipulate! do |img|
      img.strip
      img = yield(img) if block_given?
      img
    end
  end

  def set_metadata
    image = MiniMagick::Image.open(current_path)
    model.width  = image[:width]
    model.height = image[:height]
    model.size   = image[:size]
  end

end
