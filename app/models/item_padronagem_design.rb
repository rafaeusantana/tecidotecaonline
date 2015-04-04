# -*- encoding : utf-8 -*-
class ItemPadronagemDesign < ActiveRecord::Base
  self.table_name="item_padronagem_design"
  belongs_to :item
  belongs_to :padronagem_design
end
