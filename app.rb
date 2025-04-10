require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home)

end

get("/Rock") do

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

get("/Paper") do

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

get("/Scissors") do

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
