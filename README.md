# 🎮 Tic Tac Toe (Ruby CLI Game)

This is a simple **two-player Tic Tac Toe game** built in Ruby, playable in the command line. It allows players to take turns, enter moves, and automatically checks for wins or draws.

## 🧠 How It Works

- The game runs in the terminal
- Each player is prompted to enter their name and take turns
- The board updates after every move
- The game checks for a win or draw after each turn
- When the game ends, the result is displayed

## ▶️ How to Run

1. **Clone the repository:**

```bash
git clone https://github.com/EdgarAmpiire/Project-Tic-Tac-Toe
cd tic_tac_toe
```

2. **Install dependencies using Bundler:**
```bash
bundle install
gem install bundler
```

3. **Run the game**
```bash
./bin/tic_tac_toe
```

## 🧪 Running Tests

This project uses **RSpec** for testing.

1. **Install RSpec** (if not already installed):
```bash
bundle add rspec
rspec --init
```

2. Run the tests:

```bash
bundle exec rspec
```

3. The tests cover:

- Player: ensures players are initialized correctly.

- Board: validates moves, detects wins (rows, columns, diagonals), and checks for full board.

- Game: tests game flow, player switching, and uses mocks/doubles to isolate logic.
