class Fabricante < ActiveRecord::Base
  self.table_name="fabricante"
  belongs_to :catalogo
end
