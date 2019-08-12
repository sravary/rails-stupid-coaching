class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params
    if @answer[:question] == 'I am going to work'
      @response = 'Great'
    elsif @answer[:question].include?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
