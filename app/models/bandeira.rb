# -*- encoding : utf-8 -*-
class Bandeira < ActiveRecord::Base
  self.table_name="bandeira"
  has_one :item
end
