class CreateEvaluation < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluations do |t|
      t.string :name, null: false
      t.string :semestre, null: false

      t.timestamps
    end
    add_index :evaluations, :name, unique: true
  end
end
