#!/bin/zsh

# Function to display ASCII banner using figlet and lolcat
display_banner() {
  figlet "NGG Game" | lolcat
  echo "\033[1;34mWelcome to the Number Guessing Game!\033[0m" # Blue color
  echo
}

# Display the banner
display_banner

# Set the range for the number to guess
min=1
max=100
random_number=$(( ( RANDOM % max ) + min ))

# Initialize the number of attempts
attempts=0
max_attempts=10

# Game instructions
echo "\033[1;32mI have selected a random number between $min and $max.\033[0m"
echo "\033[1;32mYou have $max_attempts attempts to guess the correct number. Good luck!\033[0m"
echo

# Main game loop
while (( attempts < max_attempts )); do
  (( attempts++ ))

  # Prompt for user's guess
  echo -n "\033[1;36mAttempt $attempts: Enter your guess: \033[0m"
  read guess

  # Validate input
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "\033[1;31mInvalid input. Please enter a number.\033[0m" # Red color for error
    (( attempts-- ))
    continue
  fi

  # Convert input to integer
  guess=$((guess))

  # Check the guess
  if (( guess == random_number )); then
    echo "\033[1;32mCongratulations! You guessed the correct number $random_number in $attempts attempts!\033[0m" # Green color
    exit 0
  elif (( guess < random_number )); then
    echo "\033[1;33mToo low! Try a higher number.\033[0m" # Yellow color
  else
    echo "\033[1;33mToo high! Try a lower number.\033[0m" # Yellow color
  fi
done

# Game over message
echo "\033[1;31mSorry, you've used all your attempts. The correct number was $random_number.\033[0m" # Red color
echo "\033[1;31mBetter luck next time!\033[0m"
