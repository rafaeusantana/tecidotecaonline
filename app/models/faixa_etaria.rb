class FaixaEtaria < ActiveRecord::Base
  self.table_name="faixa_etaria"
  has_one :item
end
