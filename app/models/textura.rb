class Textura < ActiveRecord::Base
  self.table_name="textura"
  has_one :item
end
