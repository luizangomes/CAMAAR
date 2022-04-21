class SurveyQuestionsController < ApplicationController
    def index
      @survey_questions = SurveyQuestion.all
      render json: @survey_questions
    end

    def show
      render json: @survey_question
    end
  
    private
      def set_survey_question
        @survey_question = SurveyQuestion.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def survey_question_params
        params.require(:survey_question).permit(:type, :question, :optional)
      end
end
