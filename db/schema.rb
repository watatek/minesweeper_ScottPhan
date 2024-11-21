# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_241_119_083_859) do
  create_table 'boards', force: :cascade do |t|
    t.string 'email'
    t.string 'name'
    t.integer 'width'
    t.integer 'height'
    t.integer 'mines'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'mines', force: :cascade do |t|
    t.bigint 'board_id', null: false
    t.integer 'x'
    t.integer 'y'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['board_id'], name: 'index_mines_on_board_id'
  end

  add_foreign_key 'mines', 'boards'
end
