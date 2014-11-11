class CorAdicional < ActiveRecord::Base
  self.table_name="cor"
  has_many :item_cor_adicionals
  has_many :items, :through => :item_cor_adicionals
end
