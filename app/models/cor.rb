# -*- encoding : utf-8 -*-
class Cor < ActiveRecord::Base
  self.table_name="cor"
  has_one :item
end
