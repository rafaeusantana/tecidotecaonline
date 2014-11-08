class Padronagem_Desgin < ActiveRecord::Base
  self.table_name="padrongem_design"
  has_many :item_padronagem_design
  has_many :items, :through => :item_padronagem_design
end
