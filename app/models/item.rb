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

  def self.buildConditions params
	conditions=""
	if params[:item].nil?
		return ''
	end
	params[:item].each do |i|
	
	  if["localizacao","tipo_aquisicao","especificacoes","analise_cor"].include?(i[0]) 		
	    conditions += likeCondition(i[0], params[:item][i[0]])
      elsif["tipo_bandeira_id","fabricante_id","colecao_id","cor_id","acabamento_id","textura_id"].include?(i[0])
	    conditions += exactCondition(i[0], params[:item][i[0]])


      elsif["materia_prima_ids"].include?(i[0])
	    conditions += inCondition("item_materia_prima.materia_prima_id", params[:item][i[0]])
      elsif["ligamento_ids"].include?(i[0])
	    conditions += inCondition("item_ligamento.ligamento_id", params[:item][i[0]])
	  elsif["fio_titulo_ids"].include?(i[0])
	    conditions += inCondition("fio_titulo.fio_titulo_id", params[:item][i[0]])
	  elsif["padronagem_design_ids"].include?(i[0])
	    conditions += inCondition("padronagem_design.padronagem_design_id", params[:item][i[0]])
	  elsif["uso_tecido_ids"].include?(i[0])
	    conditions += inCondition("uso_tecido.uso_tecido_id", params[:item][i[0]])
	  elsif["tecnica_design_ids"].include?(i[0])
	    conditions += inCondition("tecnica_design.tecnica_design_id", params[:item][i[0]])
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
	  return " AND LOWER("+name+") = LOWER('"+value+"')"
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
end
