class GuessesController < ApplicationController
  def home
    redirect_to("http://localhost:3000/all_guesses")
  end
  def index
    g = Guess.new
    g.first_num = params["first_num"]
    g.second_num = params["second_num"]
    g.third_num = params["third_num"]
    if g.first_num != nil
    g.save
    end
    @list=Guess.all
    render("/guesses/index.html.erb")
  end
  def answer
    @user_answer = params["q"]
    render("/guesses/answer.html.erb")
  end
end
