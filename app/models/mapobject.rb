class Mapobject < ActiveRecord::Base
  belongs_to :stuff
  has_many   :mapobject_serifs
end
