class Tamanho < ActiveRecord::Base
  self.table_name="tamanho"
  has_one :item
end
