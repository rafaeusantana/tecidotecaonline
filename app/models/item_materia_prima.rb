class Item_Materia_Prima < ActiveRecord::Base
  self.table_name="item_materia_prima"
  belongs_to :item
  belongs_to :materia_prima
end
