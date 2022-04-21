class AnswersController < ApplicationController
    def index 
        anwers = Answer.all
        render json: answers
    end
end
