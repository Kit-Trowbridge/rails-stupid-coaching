class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer =
      if params[:question] == 'I am going to work'
        'Great!'
      elsif params[:question].match(/[?]+\z/)
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
