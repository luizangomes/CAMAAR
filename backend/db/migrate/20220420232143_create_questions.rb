class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table "questions", force: :cascade do |t|
      t.string :code, null: false, unique: true
      t.string :text, null: false
      t.string :tipo, null: false
      t.string :subject, null: false
      t.references :evaluations, null: false, foreign_key: true, unique: false
      t.references :cclasses, null: false, foreign_key: true, unique: false

      t.timestamps
    end
  end
end