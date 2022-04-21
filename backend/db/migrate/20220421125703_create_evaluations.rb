class CreateEvaluations < ActiveRecord::Migration[7.0]
  def change
    drop_table :evaluations
    create_table :evaluations do |t|
      t.string :name, null: false
      t.string :semester, null: false

      t.timestamps
    end
    add_index :evaluations, :name, unique: true
  end
end
