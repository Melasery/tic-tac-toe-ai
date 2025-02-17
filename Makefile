# Compiler
SML = sml

# Source files
SOURCES = src/Player.sml src/Game.sig src/TicTacToe.sml src/Train.sml src/Dict.sml src/Controller.sml

# Executable
EXEC = tic_tac_toe

# Default build command
all: build

build:
	@echo "Compiling Tic-Tac-Toe AI..."
	$(SML) < $(SOURCES)

clean:
	@echo "Cleaning up compiled files..."
	rm -f $(EXEC)

run:
	@echo "Starting Tic-Tac-Toe AI..."
	$(SML) < src/Controller.sml
