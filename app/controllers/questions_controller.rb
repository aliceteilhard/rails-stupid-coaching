class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]  # what they typed in the form
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end


  end
end




# need to read the question from params
# & need to compute an instance variable @answer for the view to display
