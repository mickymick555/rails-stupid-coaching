class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    firstanswer = 'great'
    secondanswer = 'Silly question, get dressed and go to work!'
    thirdanswer = 'I dont care, get dressed and go to work!'

    if params[:question].end_with?('?')
      @coachanswer = secondanswer
      elsif params[:question] == 'i am going to work'
        @coachanswer = firstanswer
      else
        @coachanswer = thirdanswer
    end
  end
end
