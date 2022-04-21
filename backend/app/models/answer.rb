class Answer < ApplicationRecord
    belongs_to :survey
    belongs_to :member
    belongs_to :survey_question
end
