class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?('?')
      @coach_answer = 'Stupid question, get back to work!'
    elsif @question == 'I am going to work!'
      @coach_answer = "That's right baby."
    else
      @coach_answer = 'Good for you. Get back to work!'
    end
  end
end
