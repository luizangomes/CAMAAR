class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table "options", force: :cascade do |t|
      t.string :code, null: false, unique: true
      t.string :text, null: false
      t.references :evaluations, null: false, foreign_key: true
      t.references :cclass, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t. timestamps
    end
  end
end
