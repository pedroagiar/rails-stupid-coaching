class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.match?(/\?$/)
      @answer = "Silly Question, get dressed and go to work"
    else
      @answer = "I don't care, get dressed and got to work"
    end
  end
end
