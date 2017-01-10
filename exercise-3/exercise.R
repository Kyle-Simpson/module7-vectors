# Exercise 3: Vector and function practice

#Complete

# Create a vector `marbles` with 6 colors (representing marbles).
marbles <- c("blue", "green", "red", "purple", "yellow", "orange")

# Use the `sample()` function to randomly select a single marble
sample(marbles)

# Define a function called MarbleGame. This function should:
# - Takes in a single argument `guess` that is a guess at what color marble will be drawn
# - Randomly samples a marble from the vector
# - Returns whether or not the person guessed accurately (preferrably a character string phrase)
MarbleGame <- function(guess) {
  comp.guess <- sample(marbles)
  output <- ""
  if (guess == comp.guess) {
    output <- "You guessed right!"
  } else {
    output <- "You guessed wrong."
  }
  print(output)
  
  if (output == "You guessed wrong.") {
    print("I'll pick another marble")
    MarbleGame(guess)
  }
}

# Play the marble game by guessing a color!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
# Hint, you'll need to use a `while` control structure, which is not covered in the module

      # It took four times picking a new marble for the guess to be correct.


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
