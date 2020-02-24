# frozen_string_literal: true

# good
# Description/Explanation of Person class
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question_input]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.to_str[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
    # @answer = params[:action]
  end
end
