class Item_Padronagem_Desing < ActiveRecord::Base
  self.table_name="item_padronagem_design"
  belongs_to :item
  belongs_to :padronagem_design
end
