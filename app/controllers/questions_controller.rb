class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # Si la question est "I am going to work"
    if @question == 'I am going to work'
      # La réponse est "Great !"
      @answer = 'Great !'
    # Si la question contient un "?"
    elsif @question.end_with?('?')
      # La réponse est " Silly question, get dressed and go to work!."
      @answer = 'Silly question, get dressed and go to work!.'
    # Pour le reste: la réponse est " I don't care, get dressed and go to work!."
    else
      @answer = 'I do not care, get dressed and go to work!.'
    end
  end
end
