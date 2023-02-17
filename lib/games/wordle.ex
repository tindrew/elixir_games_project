defmodule Games.Wordle do
  @spec feedback(binary) :: list
  def feedback(answer) do
    # Input: two strings
    # Transformations:
    ## Turn both strings to a list characters 1st step
    ## every el of answer list and convert to one of our target atoms by comparing it to
    ## our guess list
    ### if guess el is in answer and is at answer index return list of all :green
    ### if guess el is in answer but not at answer index return :yellow at element index
    ####
    ### if guess el not in answer return list of all :gray
    # OUtput: a list of 5 atoms consisting of :green, :yellow, :gray

    answer_letters = String.split(answer, "", trim: true)
    player_guess = IO.gets("please enter your guess: " )
    |> String.trim()
    |> String.split("", trim: true)


    IO.inspect(binding())

    # check_guess(guess, answer) do
    #   #1 return [:green]
    #   #2 return ;gray]
    #   #3 check each value and return a composit list
    #   ## go through and 1..5
    # end

    Enum.map(0..4, fn index ->
      cond do
        Enum.at(player_guess, index) not in answer_letters ->
          :gray

        Enum.at(player_guess, index) == Enum.at(answer_letters, index) ->
          :green

        Enum.at(player_guess, index) != Enum.at(answer_letters, index) ->
          :yellow

        Enum.at(player_guess, index) in answer_letters and
        Enum.at(player_guess, index) == Enum.at(answer_letters, index) ->
        :gray

      end
    end)
  end
end

# only one letter exists in answer. If two of the same letters ex

# if letter exists, is there multiple instances, is it at index? if no, gray.
# if letter exists, are they both at index? both green
# if letter exists,
