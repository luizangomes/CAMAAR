class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    drop_table :answers
    create_table :answers do |t|
      t.string :code, null: false
      t.string :question, null: false, foreign_key: true
      t.references :evaluation, null: false, foreign_key: true
      t.references :members, null: false, foreign_key: true
      t.references :cclass, null: false, foreign_key: true
      t.references :options, null:false, foreign_key: true

      t.timestamps
    end
    add_index :answers, :code, unique: true
  end
end
