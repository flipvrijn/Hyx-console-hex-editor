
all: CFLAGS ?= -O2 -Wl,-s
all: CFLAGS += -std=c99 -pedantic -Wall -Wextra -DNDEBUG
all: hyx

debug: CFLAGS ?= -O0 -g
debug: CFLAGS += -std=c99 -pedantic -Wall -Wextra -Werror
debug: hyx

hyx: src/*.h src/*.c
	$(CC) \
		$(CFLAGS) \
		src/hyx.c src/common.c src/blob.c src/history.c src/view.c src/input.c src/memstream.c \
		-o hyx

clean:
	rm -f hyx

