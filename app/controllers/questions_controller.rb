class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]

    unless @question == nil
      if @question == "I'm going to work"
        @answer = "Great!"
      elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
