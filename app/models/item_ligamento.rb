class ItemLigamento < ActiveRecord::Base
  self.table_name="item_ligamento"
  belongs_to :item
  belongs_to :ligamento
end
