class QuestionsController < ApplicationController
    def new 
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        if @question.save
          redirect_to @question
        else
          render :new, status: :unprocessable_entity
        end
    end

    def index
        @questions = Question.all
    end

    private
    def question_params
      params.require(:question).permit(:question_content, :option_1, :option_2, :option_3, :option_4, :correct_answer)
    end
end
