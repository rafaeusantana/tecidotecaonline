class ItemTipoMaterial < ActiveRecord::Base
  self.table_name="item_tipo_material"
  belongs_to :item
  belongs_to :tipo_material
end
