class ItemFioTitulo < ActiveRecord::Base
  self.table_name="item_fio_titulo"
  belongs_to :item
  belongs_to :fio_titulo
end
