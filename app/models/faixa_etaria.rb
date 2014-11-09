class FaixaEtaria < ActiveRecord::Base
  self.table_name="faixa_etaria"
  has_many :item_faixa_etarias
  has_many :items, :through => :item_faixa_etarias
end
