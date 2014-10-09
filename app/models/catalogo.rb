class Catalogo < ActiveRecord::Base
  self.table_name="Catalogo"
  has_many :fabricantes
end
