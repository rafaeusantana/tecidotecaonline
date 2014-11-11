class UsoTecido < ActiveRecord::Base
  self.table_name="uso_tecido"
  has_many :item_uso_tecidos
  has_many :items, :through => :item_uso_tecidos
end
