# -*- encoding : utf-8 -*-
class MateriaPrima < ActiveRecord::Base
  self.table_name="materia_prima"
  has_many :item_materia_primas
  has_many :items, :through => :item_materia_primas
end
