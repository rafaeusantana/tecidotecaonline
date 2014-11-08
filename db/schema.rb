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

ActiveRecord::Schema.define(version: 20141007145628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalogo_tipo_material", id: false, force: true do |t|
    t.integer "catalogo_id",      null: false
    t.integer "tipo_material_id", null: false
  end

  create_table "colecao", force: true do |t|
    t.string  "nome_colecao",  limit: 100, null: false
    t.date    "ano_colecao"
    t.integer "fabricante_id"
  end

  create_table "fabricante", force: true do |t|
    t.string "nome",           limit: 100, null: false
    t.string "estado",         limit: 2
    t.string "cidade",         limit: 100
    t.string "endereco",       limit: 150
    t.string "pais",           limit: 100
    t.string "especificacoes", limit: 500
    t.string "site",           limit: 100
    t.string "email",          limit: 100
  end

  create_table "ideas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item", force: true do |t|
    t.integer "suporte_id"
    t.string  "localizacao",    limit: 6,  null: false
    t.string  "nome_aquisicao", limit: 50
    t.date    "data_aquisicao"
    t.integer "fabricante_id"
    t.integer "colecao_id"
  end

  create_table "item_ligamento", id: false, force: true do |t|
    t.integer "ligamento_id", null: false
    t.integer "item_id",      null: false
  end

  create_table "item_materia_prima", id: false, force: true do |t|
    t.integer "materia_prima_id", null: false
    t.integer "item_id",          null: false
  end

  create_table "item_padronagem_design", id: false, force: true do |t|
    t.integer "padronagem_design_id", null: false
    t.integer "item_id",              null: false
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

  create_table "tipo_material", force: true do |t|
    t.string "nome", limit: 100, null: false
  end

end
