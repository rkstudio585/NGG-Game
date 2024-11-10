# 🎲 NGG Game - Number Guessing Game

Welcome to **NGG Game** - a simple and fun Number Guessing Game designed for the terminal! This project is written in **Zsh script** and provides a colorful, interactive experience using ASCII art, color codes, and engaging messages. Play against the computer to guess the randomly selected number within a certain number of attempts. Enjoy the game and see if you can win! 🏆

## 📜 Table of Contents
- [About the Game](#-about-the-game)
- [Features](#-features)
- [Gameplay](#-gameplay)
- [Installation](#-installation)
- [How to Run the Game](#-how-to-run-the-game)
- [Code Overview](#-code-overview)
- [Customization](#-customization)
- [Dependencies](#-dependencies)

## 🎯 About the Game

**NGG Game** (Number Guessing Game) is a terminal-based guessing game where players try to guess a randomly generated number within a specified range (1-100 by default). The game provides feedback on each guess, such as "too high" or "too low," helping the player get closer to the target number. It is an exciting game for anyone looking to have some fun in the terminal.

## ✨ Features

- **Interactive Gameplay**: Receive instant feedback on each guess.
- **Attempts Limitation**: Players have a limited number of attempts to guess correctly.
- **ASCII Art Banner**: A colorful ASCII banner generated using `figlet` and `lolcat`.
- **Colorful Output**: Messages are color-coded to improve readability and engagement.
- **Easy Customization**: Change the number range and attempt limits to make the game easier or harder.

## 🎮 Gameplay

1. The game selects a random number between a predefined range (default: 1-100).
2. The player has a set number of attempts (default: 10) to guess the number.
3. After each guess, the game provides feedback:
   - **"Too high!"** if the guess is greater than the target.
   - **"Too low!"** if the guess is less than the target.
   - **"Congratulations!"** if the guess is correct.
4. If the player uses all attempts without guessing correctly, the game reveals the number and ends.

## 🛠️ Installation

To play this game, ensure you have the necessary dependencies installed.

### Clone repo
  ```bash
  git clone https://github.com/rkstudio585/NGG-Game
  cd NGG-Game
  ```

1. **Install Zsh** (if not already installed):
   ```bash
   sudo apt-get install zsh -y
   ```
   or
   ```bash
   apt install zsh -y
   ```

3. **Install `figlet`**:
   ```bash
   sudo apt-get install figlet -y
   ```
   or
   ```bash
   apt install figlet -y
   ```
4. **Install `ruby`**:
   ```bash
   sudo apt-get install ruby -y
   ```
   or
   ```bash
   apt install ruby -y
   ```
   
5. **Install `lolcat`** (for colorful ASCII text):
   ```bash
   sudo gem install lolcat -y
   ```
   or
   ```bash
   gem install lolcat -y
   ```

## ▶️ How to Run the Game

1. **Download the Script**:
   - Save the code in a file named `ngg.zsh`.

2. **Make the Script Executable**:
   ```bash
   chmod +x ngg.zsh
   ```

3. **Run the Game**:
   ```bash
   ./ngg.zsh
   ```
   or
   ```bash
   zsh ngg.zsh
   ```

## 🧩 Code Overview

Here's a breakdown of the code structure:

### 1. Display Banner
The `display_banner` function creates a colorful ASCII banner at the start of the game using `figlet` and `lolcat`:
```zsh
display_banner() {
  figlet "NGG Game" | lolcat
  echo "\033[1;34mWelcome to the Number Guessing Game!\033[0m" # Blue color
  echo
}
```

### 2. Generate Random Number
A random number within the specified range is generated:
```zsh
min=1
max=100
random_number=$(( ( RANDOM % max ) + min ))
```

### 3. Game Loop
The main game loop allows the player to make guesses and gives feedback after each guess:
```zsh
while (( attempts < max_attempts )); do
  # Code for each guess and feedback
done
```

### 4. User Feedback
The game responds to each guess with feedback using colored text to indicate whether the guess was too high, too low, or correct:
- **Green**: Correct guess.
- **Yellow**: Hints (too high or too low).
- **Red**: Error messages (invalid input or game over).

## 🎨 Customization

### 1. Change Range
To modify the range of numbers, adjust the `min` and `max` variables:
```zsh
min=1
max=200  # Adjust the range here
```

### 2. Change Attempt Limit
To give players more or fewer attempts, change the `max_attempts` variable:
```zsh
max_attempts=5  # Adjust the number of attempts here
```

### 3. Customize Colors
You can modify the ANSI color codes to personalize the game’s color scheme. For example, change the color of "Too low" or "Too high" messages:
```zsh
echo "\033[1;36mToo low! Try a higher number.\033[0m" # Cyan color
```

## 📦 Dependencies

This project requires:
- `zsh`: To run the script.
- `figlet`: For generating ASCII text.
- `lolcat`: For applying rainbow colors to text.

To install these dependencies, use the commands in the [Installation](#installation) section.


---

Enjoy your guessing journey and see if you can win the **NGG Game**! 🎉
