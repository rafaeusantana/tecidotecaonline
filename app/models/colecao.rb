class Colecao < ActiveRecord::Base
  self.table_name="colecao"
  belongs_to :fabricante
  has_one :item
end
