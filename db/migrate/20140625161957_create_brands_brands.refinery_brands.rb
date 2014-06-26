# This migration comes from refinery_brands (originally 1)
class CreateBrandsBrands < ActiveRecord::Migration

  def up
    create_table :refinery_brands do |t|
      t.string :name
      t.integer :logo_image_id
      t.integer :main_image_id
      t.text :intro_text
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-brands"})
    end

    drop_table :refinery_brands

  end

end
