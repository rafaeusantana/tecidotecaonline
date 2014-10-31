class Catalogo < ActiveRecord::Base
  self.table_name="catalogo"
  has_one :fabricante
  has_one :suporte
end
