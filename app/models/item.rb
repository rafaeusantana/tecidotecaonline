class Item < ActiveRecord::Base
  self.table_name="item"
  has_one :fabricante
  has_one :suporte
end
