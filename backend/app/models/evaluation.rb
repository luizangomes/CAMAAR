class Evaluation < ApplicationRecord
  has_many: questions, through: :options
  has_many: answers, through: :options
end