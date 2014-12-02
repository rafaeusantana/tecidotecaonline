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
  belongs_to :item_variado
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

  @@joinAttributes = {
"tipo_material_ids"=>["item_tipo_materials","item_tipo_material","tipo_material_id"],
"materia_prima_ids"=>["item_materia_primas","item_materia_prima","materia_prima_id"],
"ligamento_ids"=>["item_ligamentos","item_ligamento","ligamento_id"],
"fio_titulo_ids"=>["item_fio_titulos","item_fio_titulo","fio_titulo_id"],
"padronagem_design_ids"=>["item_padronagem_designs","item_padronagem_design","padronagem_design_id"],
"uso_tecido_ids"=>["item_uso_tecidos","item_uso_tecido","uso_tecido_id"],
"cor_adicional_ids"=>["item_cor_adicionals","item_cor_adicional","cor_adicional_id"],
"tecnica_design_ids"=>["item_tecnica_designs","item_tecnica_design","tecnica_design_id"]
}

  def self.selecionarItens(params, type)
    if params[:item].nil?
      return Item.where("suporte_id="+type)
    end
    @bandeiras = Item.select("item.*")
    @bandeiras = @bandeiras.joins(buildJoins(params)).group(:id)
    @bandeiras = @bandeiras.where("suporte_id="+type+" "+buildConditions(params))
    return @bandeiras
  end

  def self.buildJoins(params)
    joins = ""
    params[:item].each do |i|
      if !@@joinAttributes[i[0]].nil?
        joins += " LEFT JOIN "+@@joinAttributes[i[0]][1]+" ON item.id="+@@joinAttributes[i[0]][1]+".item_id"
      end
    end
    return joins
  end

  def self.buildConditions params
	conditions=""
	if params[:item].nil?
		return ''
	end
	params[:item].each do |i|
	
	  if["localizacao","tipo_aquisicao","especificacoes","peca_vestuario","analise_cor"].include?(i[0]) 		
	    conditions += likeCondition(i[0], params[:item][i[0]])
          elsif["tipo_bandeira_id","tipo_item_variado_id","fabricante_id","tamanho_id","colecao_id","cor_id","acabamento_id","textura_id","faixa_etaria_id"].include?(i[0])
	    conditions += exactCondition(i[0], params[:item][i[0]])
          elsif !@@joinAttributes[i[0]].nil?
	    conditions += inCondition(@@joinAttributes[i[0]][1]+"."+@@joinAttributes[i[0]][2], params[:item][i[0]])
          end
      
        end
	
    return conditions
  end

  def self.likeCondition(name, value)
	if value!=''
      return " AND LOWER("+name+") like LOWER('%"+value+"%')"
    end
    ""
  end

  def self.exactCondition(name, value)
	if value!=''
	  return " AND "+name+" = '"+value+"'"
	end
    ""
  end


  def self.inCondition(name, values)
	inStr ="-1";
	if values.size>1
	  values.each do |i|
		if i!=""
          inStr+=","+i;
		end
	  end
	  return " AND "+name+" IN ("+inStr+")"
	end
    ""    
  end

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |bandeira|
	      csv << bandeira.attributes.values_at(*column_names)
	    end
	  end
	end
end
