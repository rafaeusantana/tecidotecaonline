class Fabricante < ActiveRecord::Base
  self.table_name="fabricante"
  has_one :item
  has_one :colecao
end
