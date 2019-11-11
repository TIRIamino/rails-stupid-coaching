class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

#   def answer
#     @question_asked = params[:ask_type]

#     if @question_asked.downcase == "i am going to work right now!"
#       @question_answer = ""
#     elsif @question_asked.end_with?("?")
#       @question_answer = "Silly question, get dressed and go to work!"
#     else
#       @question_answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end


