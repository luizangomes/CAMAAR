class CreateSurveyQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :survey_questions do |t|
      t.string :type
      t.string :question
      t.text :optional
      t.belongs_to :survey, foreign_key: true

      t.timestamps
    end
  end
end
