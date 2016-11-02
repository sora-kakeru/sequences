Rails.application.routes.draw do
  get("/",            { :controller => "guesses", :action => "home"})
  get("/all_guesses", { :controller => "guesses", :action => "index"})
  get("/show_answer", { :controller => "guesses", :action => "answer"})
end
