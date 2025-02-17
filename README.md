# ⭐ Tic-Tac-Toe AI with Reinforcement Learning

## Overview
This project implements a **Tic-Tac-Toe game** with an **AI opponent** trained using **reinforcement learning**. The AI improves over time through repeated self-play and maintains a memory of game states using a dictionary-based system. The game supports human vs. AI play, with the AI acting as Player O.

## Features
- ✅ **Human vs. AI gameplay**: The user plays as Player X against an AI opponent (Player O).
- ✅ **Game rules enforcement**: Ensures valid moves, detects wins, and handles draws.
- ✅ **AI reinforcement learning**: Uses self-play and Q-learning to improve decision-making.
- ✅ **Dictionary-based AI memory**: Stores learned state evaluations for optimal moves.
- ✅ **Command-line interface**: Simple text-based interaction.

## 🏢 Project Structure
```
/tic-tac-toe-ai
│── /src/
│    ├── TicTacToe.sml          # Tic-Tac-Toe game implementation
│    ├── Controller.sml         # Handles user interaction & game loop
│    ├── Train.sml              # AI reinforcement learning logic
│    ├── Dict.sml               # Dictionary storage system for AI memory
│    ├── Player.sml             # Player definitions (X/O) and game state
│    ├── Game.sig               # Signature defining the game framework
│── README.md                   # Project documentation
│── .gitignore                                    
│── Makefile                    
```

## ⚙️ Installation
### **Prerequisites**
To run this project, install the **Standard ML of New Jersey (SML/NJ)** compiler.

#### **Install SML/NJ (Linux/macOS)**
```sh
sudo apt install smlnj  # Ubuntu/Debian
brew install smlnj      # macOS (Homebrew)
```
#### **Install SML/NJ (Windows)**
Download and install [SML/NJ](http://www.smlnj.org/) for Windows.

### **Clone the Repository**
```sh
git clone https://github.com/yourusername/tic-tac-toe-ai.git
cd tic-tac-toe-ai
```

### **Build the Project**
```sh
make
```

## How to Play
### **Start the Game**
Run the following command to start the game:
```sh
sml < src/Controller.sml
```
The game will prompt Player X (human) to enter a move. Player O (AI) will automatically make its move.

### **Game Controls**
- Enter moves in the format: `row,column` (e.g., `1,2` for row 1, column 2).
- The game board updates after each move.
- The game continues until a player wins or there is a draw.

## 🎮 Game Logic
### **1. TicTacToe.sml (Game Implementation)**
- Defines the **game board** as a 3x3 grid.
- Implements **game rules**, including win conditions and valid moves.
- Manages the **game state** and board updates.

### **2. Controller.sml (Game Loop & User Interaction)**
- Handles the **main game loop**.
- Prompts the **user for input** and validates moves.
- Calls AI logic for Player O.

### **3. Train.sml (AI Training with Reinforcement Learning)**
- Uses **self-play** to improve decision-making.
- Stores knowledge in a **dictionary-based memory**.
- Implements a **Q-learning-inspired approach**.

### **4. Dict.sml (Dictionary Storage for AI Memory)**
- Provides a **key-value storage** system for the AI’s learned knowledge.
- Implements **lookup, insert, and retrieval functions**.

### **5. Player.sml (Player Definitions)**
- Defines **Player X and Player O**.
- Manages **turn switching** and **game status**.

### **6. Game.sig (Game Framework)**
- Defines the **interface** for the game system.
- Establishes required **types and functions**.

## 🤖 AI Learning Process
### **1. Self-Play Training**
- The AI plays against itself for thousands of games.
- It assigns **scores** to board positions based on win/loss outcomes.
- Learns to choose moves that maximize future success.

### **2. Q-Value Update Formula**
- The AI updates state evaluations using:
  \[
  Q(s) = Q(s) + \alpha \times (Q(s') - Q(s))
  \]
- Where:
  - \( Q(s) \) is the score for the current state.
  - \( \alpha \) is the learning rate.
  - \( s' \) is the next state.

### **3. Move Selection Strategy**
- The AI selects the **move with the highest learned score**.
- If multiple moves have the same score, it picks one **randomly**.

## 🎮 Example Gameplay
```
Player X's turn:
Current board:
. . .
. . .
. . .

Enter your move (row,column): 1,1
Player O is choosing a move...
Current board:
X . .
. O .
. . .

Player X's turn:
Enter your move (row,column): 0,2
...
```

## Future Enhancements
- **Minimax AI Strategy**: Improve AI decision-making beyond reinforcement learning.
- **GUI Interface**: Implement a graphical version of the game.
- **Multi-Game Learning**: Train AI across multiple game scenarios.


