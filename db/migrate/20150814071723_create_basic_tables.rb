class CreateBasicTables < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.text    :name
      t.integer :width_tiles,  default: 0
      t.integer :height_tiles, default: 0
      t.integer :stuff_id
      t.timestamps
    end

    create_table :tiles do |t|
      t.integer :image_id,null: false
      t.integer :stuff_id
      t.timestamps
    end

    create_table :images do |t|
      t.integer :width,   null: false
      t.integer :height,  null: false
      t.integer :size
      t.string  :file_name
      t.string  :image
      t.string  :caption
      t.integer :stuff_id
      t.timestamps
    end

    create_table :map_tiles do |t|
      t.integer :map_id,  null: false
      t.integer :x_pos,   null: false
      t.integer :y_pos,   null: false
      t.integer :tile_id, null: false
      t.timestamps
    end

    create_table :dungeons do |t|
      t.text    :name
      t.integer :map_id,  null: false
      t.integer :stuff_id
      t.timestamps
    end

    create_table :serifs do |t|
      t.text    :text
      t.integer :stuff_id
      t.timestamps
    end

    create_table :mapobject_serifs do |t|
      t.integer :mapobject_id, null: false
      t.integer :serif_id,  null: false
      t.timestamps
    end

    create_table :mapobjects do |t|
      t.text    :name
      t.boolean :movable,  default: false
      t.boolean :talkable, default: false
      t.integer :stuff_id
      t.timestamps
    end

    create_table :stuffs do |t|
      t.string         :name
      t.string         :password_digest
      t.timestamps
    end

  end
end
