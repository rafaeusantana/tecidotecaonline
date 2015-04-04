# -*- encoding : utf-8 -*-
class TipoMaterial < ActiveRecord::Base
  self.table_name="tipo_material"
  has_many :item_tipo_materials
  has_many :items, :through => :item_tipo_materials
end
