class Materia_Prima < ActiveRecord::Base
  self.table_name="materia_prima"
  has_many :item_materia_prima
  has_many :items, :through => :item_materia_prima
end
