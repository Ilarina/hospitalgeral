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

ActiveRecord::Schema.define(version: 20140223192323) do

  create_table "consultations", force: true do |t|
    t.string   "data"
    t.string   "hora"
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultations", ["medico_id"], name: "index_consultations_on_medico_id"
  add_index "consultations", ["paciente_id"], name: "index_consultations_on_paciente_id"

  create_table "exames", force: true do |t|
    t.string   "descricao"
    t.string   "valor"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicos", force: true do |t|
    t.string   "nome"
    t.string   "fone"
    t.string   "endereco"
    t.string   "email"
    t.string   "crm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", force: true do |t|
    t.string   "nome"
    t.string   "fone"
    t.string   "endereco"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "plano"
    t.string   "dataexame"
    t.string   "dataentrega"
    t.string   "laudo"
    t.integer  "exame_id"
    t.integer  "consultation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["consultation_id"], name: "index_requests_on_consultation_id"
  add_index "requests", ["exame_id"], name: "index_requests_on_exame_id"

end
