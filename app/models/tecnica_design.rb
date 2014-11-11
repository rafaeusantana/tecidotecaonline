class TecnicaDesign < ActiveRecord::Base
  self.table_name="tecnica_design"
  has_many :item_tecnica_designs
  has_many :items, :through => :item_tecnica_designs
end
