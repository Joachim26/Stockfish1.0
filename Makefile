MODULE = Stockfish
SRC_FILES = *.cpp

CFLAGS += -std=c++11 -DNDEBUG -O3 -flto -march=armv8-a
DFLAGS += 
WFLAGS += -Wfatal-errors -Wall -Wextra -Wshadow
LFLAGS += -static-libstdc++

default:
	clang++ $(CFLAGS) $(DFLAGS) $(WFLAGS) $(SRC_FILES) $(LFLAGS) -o $(MODULE)
	strip $(MODULE)