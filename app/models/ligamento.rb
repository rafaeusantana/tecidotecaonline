# -*- encoding : utf-8 -*-
class Ligamento < ActiveRecord::Base
  self.table_name="ligamento"
  has_many :item_ligamentos
  has_many :items, :through => :item_ligamentos
end
