# -*- encoding : utf-8 -*-
class Acabamento < ActiveRecord::Base
  self.table_name="acabamento"
  has_one :item
end
