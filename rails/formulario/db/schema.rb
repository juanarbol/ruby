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

ActiveRecord::Schema.define(version: 20160313181951) do

  create_table "children", force: :cascade do |t|
    t.string   "nombre"
    t.string   "segundo_nombre"
    t.string   "apellido"
    t.string   "segundo_apellido"
    t.integer  "documento"
    t.integer  "edad"
    t.string   "nombre_padre"
    t.string   "nombre_madre"
    t.string   "vacunas"
    t.date     "fecha_nacimiento"
    t.string   "cancer"
    t.string   "hipertension"
    t.string   "diabetes"
    t.string   "desnutricion"
    t.string   "grupo_sanguineo"
    t.string   "enfermedades"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "sexo"
  end

  create_table "moms", force: :cascade do |t|
    t.string   "nombre"
    t.string   "segundo_nombre"
    t.string   "apellido"
    t.string   "segundo_apellido"
    t.integer  "documento"
    t.integer  "hijos"
    t.integer  "abortos"
    t.string   "problemas"
    t.string   "cancer_ovario"
    t.string   "cancer_mama"
    t.string   "otro_cancer"
    t.string   "grupo_sanguineo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
