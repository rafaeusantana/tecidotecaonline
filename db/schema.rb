# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141112032116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acabamento", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "bandeira", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "catalogo", force: true do |t|
    t.integer "suporte_id"
    t.string  "localizacao",                      limit: 6,   null: false
    t.string  "nome_aquisicao",                   limit: 50
    t.date    "data_aquisicao"
    t.string  "fibra_tecido",                     limit: 100
    t.string  "codificacao_internacional_tecido", limit: 50
    t.integer "fabricante_id"
  end

  create_table "catalogo_tipo_material", id: false, force: true do |t|
    t.integer "catalogo_id",      null: false
    t.integer "tipo_material_id", null: false
  end

  create_table "colecao", force: true do |t|
    t.string "nome", limit: 100, null: false
  end

  create_table "cor", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "fabricante", force: true do |t|
    t.string "nome",     limit: 100, null: false
    t.string "estado",   limit: 2
    t.string "cidade",   limit: 100
    t.string "endereco", limit: 150
    t.string "pais",     limit: 100
    t.string "site",     limit: 100
    t.string "email",    limit: 100
  end

  create_table "faixa_etaria", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "fio_titulo", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "item", force: true do |t|
    t.integer "suporte_id"
    t.string  "localizacao",          limit: 6,   null: false
    t.string  "tipo_aquisicao",       limit: 50
    t.date    "data_aquisicao"
    t.string  "fornecedor_aquisicao", limit: 50
    t.integer "fabricante_id"
    t.integer "colecao_id"
    t.integer "ano_colecao"
    t.string  "especificacoes",       limit: 500
    t.integer "tamanho_id"
    t.integer "faixa_etaria_id"
    t.string  "peca_vestuario",       limit: 50
    t.integer "tipo_bandeira_id"
    t.integer "gramatura"
    t.integer "numero_trama"
    t.integer "numero_urdume"
    t.integer "cor_id"
    t.integer "acabamento_id"
    t.integer "textura_id"
    t.string  "analise_cor",          limit: 100
  end

  create_table "item_cor_adicional", id: false, force: true do |t|
    t.integer "item_id",          null: false
    t.integer "cor_adicional_id", null: false
  end

  create_table "item_fio_titulo", id: false, force: true do |t|
    t.integer "item_id",       null: false
    t.integer "fio_titulo_id", null: false
  end

  create_table "item_ligamento", id: false, force: true do |t|
    t.integer "item_id",      null: false
    t.integer "ligamento_id", null: false
  end

  create_table "item_materia_prima", id: false, force: true do |t|
    t.integer "item_id",          null: false
    t.integer "materia_prima_id", null: false
  end

  create_table "item_padronagem_design", id: false, force: true do |t|
    t.integer "item_id",              null: false
    t.integer "padronagem_design_id", null: false
  end

  create_table "item_tecnica_design", id: false, force: true do |t|
    t.integer "item_id",           null: false
    t.integer "tecnica_design_id", null: false
  end

  create_table "item_tipo_material", id: false, force: true do |t|
    t.integer "item_id",          null: false
    t.integer "tipo_material_id", null: false
  end

  create_table "item_uso_tecido", id: false, force: true do |t|
    t.integer "item_id",       null: false
    t.integer "uso_tecido_id", null: false
  end

  create_table "ligamento", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "materia_prima", force: true do |t|
    t.string "nome",                             limit: 50, null: false
    t.string "codificacao_internacional_tecido", limit: 50
  end

  create_table "padronagem_design", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "suporte", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "tamanho", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "tecnica_design", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "textura", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

  create_table "tipo_material", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "uso_tecido", force: true do |t|
    t.string "tipo", limit: 50, null: false
  end

end
