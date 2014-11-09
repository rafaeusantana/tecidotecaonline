class Item < ActiveRecord::Base
  self.table_name="item"
  belongs_to :suporte
  belongs_to :fabricante
  belongs_to :colecao
  has_many :item_ligamentos
  has_many :ligamentos, :through => :item_ligamentos
  has_many :item_materia_primas
  has_many :materia_primas, :through => :item_materia_primas
  has_many :item_padronagem_designs
  has_many :padronagem_designs, :through => :item_padronagem_designs
  has_many :item_faixa_etarias
  has_many :faixa_etarias, :through => :item_faixa_etarias
  has_many :item_tipo_materials
  has_many :tipo_materials, :through => :item_tipo_materials
end
