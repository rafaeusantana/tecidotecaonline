# -*- encoding : utf-8 -*-
class FioTitulo < ActiveRecord::Base
  self.table_name="fio_titulo"
  has_many :item_fio_titulos
  has_many :items, :through => :item_fio_titulos
end
