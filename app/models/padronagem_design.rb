class PadronagemDesign < ActiveRecord::Base
  self.table_name="padronagem_design"
  has_many :item_padronagem_designs
  has_many :items, :through => :item_padronagem_designs
end
