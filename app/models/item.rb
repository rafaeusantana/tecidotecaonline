class Item < ActiveRecord::Base
  self.table_name="item"
  belongs_to :suporte
  belongs_to :fabricante
  belongs_to :colecao
  belongs_to :cor
  belongs_to :tamanho
  belongs_to :faixa_etaria
  belongs_to :acabamento
  belongs_to :textura
  belongs_to :bandeira
  has_many :item_ligamentos
  has_many :ligamentos, :through => :item_ligamentos
  has_many :item_materia_primas
  has_many :materia_primas, :through => :item_materia_primas
  has_many :item_padronagem_designs
  has_many :padronagem_designs, :through => :item_padronagem_designs
  has_many :item_tipo_materials
  has_many :tipo_materials, :through => :item_tipo_materials
  has_many :item_fio_titulos
  has_many :fio_titulos, :through => :item_fio_titulos
  has_many :item_uso_tecidos
  has_many :uso_tecidos, :through => :item_uso_tecidos
  has_many :item_cor_adicionals
  has_many :cor_adicionals, :through => :item_cor_adicionals
  has_many :item_tecnica_designs
  has_many :tecnica_designs, :through => :item_tecnica_designs

  def buildConditions params
    if params[:item].nil?
      return ''
    end
	conditions = " AND 1=1 "
    if !params[:item][:localizacao].nil? && params[:item][:localizacao]!=""
      conditions += " AND localizacao like '"+params[:item][:localizacao]+"%'"
    end
    return conditions
  end

end
