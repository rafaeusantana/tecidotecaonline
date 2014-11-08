class Suporte < ActiveRecord::Base
  self.table_name="suporte"
  has_one :item
end
