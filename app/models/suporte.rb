class Suporte < ActiveRecord::Base
  self.table_name="suporte"
  belongs_to :catalogo
end
