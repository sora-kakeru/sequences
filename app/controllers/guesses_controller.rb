class GuessesController < ApplicationController
  def index
    g = Guess.new
    g.first_number = params["first_num"]
    g.second_number = params["second_num"]
    g.third_number = params["third_num"]
    g.save
    @list=Guess.all
    render("/guesses/index.html.erb")
  end
  def answer
    @user_answer = params["q"]
    render("/guesses/answer.html.erb")
  end
end
