# -*- encoding : utf-8 -*-
class ItemVariado < ActiveRecord::Base
  self.table_name="item_variado"
  has_one :item
end
