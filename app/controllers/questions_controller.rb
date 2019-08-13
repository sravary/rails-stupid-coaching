class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @response = "Don't be lazy. Type something..."
    elsif @question =~ /i am going to work/i
      @response = 'Great! You got this.'
    elsif @question.include?('?')
      @response = 'Silly question, get dressed & go to work!'
    else
      @response = "I don't care, get dressed & go to work!"
    end
  end
end
