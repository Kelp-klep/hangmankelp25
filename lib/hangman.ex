defmodule Hangman do
  def score_guess({secret, rights, wrongs, lives}, guess) do
    if secret =~ guess do
      {secret, rights <> guess, wrongs, lives}
    else
    {secret, rights, wrongs <> guess, lives - 1}
  end
end
end
