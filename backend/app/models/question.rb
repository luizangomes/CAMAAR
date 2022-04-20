class Question < ApplicationRecord
    has_many :options
    has_many :answers, through: :options
end