class Answer < ApplicationRecord
  has_many :options
  has_many :questions, through: :options
end