module Refinery
  module Brands
    class Brand < Refinery::Core::BaseModel
      self.table_name = 'refinery_brands'

      attr_accessible :name, :logo_image_id, :main_image_id, :intro_text, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :logo_image, :class_name => '::Refinery::Image'

      belongs_to :main_image, :class_name => '::Refinery::Image'
    end
  end
end
