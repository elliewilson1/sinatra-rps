require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home)

end

get("/rock") do

  moves = ["rock", "paper", "scissors"]

  @their_move = moves.sample

  if @their_move == "rock"
    @outcome = "tied"
  elsif @their_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:rock)

end

get("/paper") do

  moves = ["rock", "paper", "scissors"]

  @their_move = moves.sample

  if @their_move == "rock"
    @outcome = "won"
  elsif @their_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:paper)

end

get("/scissors") do

  moves = ["rock", "paper", "scissors"]

  @their_move = moves.sample

  if @their_move == "rock"
    @outcome = "lost"
  elsif @their_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  erb(:scissors)

end
