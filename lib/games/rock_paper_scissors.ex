defmodule Games.RockPaperScissors do

  def beats?(player1, player2) do
    {player1, player2} in [
      {"rock", "scissors"},
      {"paper", "rock"},
      {"scissors", "paper"},
      {"rock", "lizard"},
      {"lizard", "spock"},
      {"spock", "scissors"},
      {"scissors", "lizard"},
      {"lizard", "paper"},
      {"paper", "spock"},
      {"spock", "rock"}
    ]
  end



  def play() do
    ai_choice =  Enum.random(["rock", "paper", "scissors", "lizard", "spock"])
    player_choice = IO.gets("rock/paper/scissors/lizard/spock: ") |> String.trim()

    cond do
      beats?(player_choice, ai_choice) -> "Player Wins!"
      beats?(ai_choice, player_choice) -> "AI Wins! And takes over the world!"
      ai_choice == player_choice -> "Draw!"
    end
  end




end
