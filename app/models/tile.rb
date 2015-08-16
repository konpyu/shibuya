class Tile < ActiveRecord::Base
  has_one    :image
  belongs_to :stuff
end
