class AnswersController < ApplicationController
    def index
      @answers = Answer.all
      render json: @answers
    end
  
    def show
        @answers = Answer.find(params[:id])
    end

    private
    def set_answer
      @answer = Answer.find(params[:id])
    end
    
    def answer_params
      params.require(:answer).permit(:content)
    end
end
