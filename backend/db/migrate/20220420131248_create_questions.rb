class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :code, null: false
      t.string :text, null:false
      t.string :question, null: false, foreign_key: true
      t.references :evaluation, null: false, foreign_key: true
      t.references :members, null: false, foreign_key: true
      t.references :cclass, null: false, foreign_key: true

      t.timestamps
    end
    add_index :options, :code, unique: true
  end
end
