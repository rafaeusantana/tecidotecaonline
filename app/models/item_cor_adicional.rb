class ItemCorAdicional < ActiveRecord::Base
  self.table_name="item_cor_adicional"
  belongs_to :item
  belongs_to :cor_adicional
end
