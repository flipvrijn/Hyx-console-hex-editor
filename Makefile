
all: CFLAGS ?= -O2 -Wl,-s
all: CFLAGS += -std=c99 -pedantic -Wall -Wextra -DNDEBUG
all: hyx

debug: CFLAGS ?= -O0 -g
debug: CFLAGS += -std=c99 -pedantic -Wall -Wextra -Werror
debug: hyx

hyx: *.h *.c
	$(CC) \
		$(CFLAGS) \
		hyx.c common.c blob.c history.c view.c input.c memstream.c \
		-o hyx

clean:
	rm -f hyx

