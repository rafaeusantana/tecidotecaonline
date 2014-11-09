class ItemFaixaEtaria < ActiveRecord::Base
  self.table_name="item_faixa_etaria"
  belongs_to :item
  belongs_to :faixa_etaria
end
