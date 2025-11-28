CC ?= gcc
CFLAGS ?= -O2 -std=c11 -Wall -Wextra
BIN := forker
SRC := forker.c

.PHONY: all clean rebuild run

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $<

rebuild: clean all

clean:
	rm -f $(BIN)

# Convenience: rebuild then run against the sample config.
run: $(BIN)
	./$(BIN) wfb.conf
