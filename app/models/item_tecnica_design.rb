class ItemTecnicaDesign < ActiveRecord::Base
  self.table_name="item_tecnica_design"
  belongs_to :item
  belongs_to :tecnica_design
end
