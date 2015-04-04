# -*- encoding : utf-8 -*-
class ItemUsoTecido < ActiveRecord::Base
  self.table_name="item_uso_tecido"
  belongs_to :item
  belongs_to :uso_tecido
end
