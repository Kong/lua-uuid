LUA ?= lua5.1
LUA_LIBDIR ?= $(shell pkg-config $(LUA) --libs)
LUA_INCDIR ?= $(shell pkg-config $(LUA) --cflags)

UUID_LIBDIR ?= $(shell pkg-config uuid --libs)
UUID_INCDIR ?= $(shell pkg-config uuid --cflags)

LIBFLAG ?= -shared
CFLAGS ?= -O2 -Wall -Werror

.PHONY: all clean install

all: lua_uuid.so

lua_uuid.so: lua_uuid.o
	$(CC) $(LIBFLAG) $(LUA_LIBDIR) $(UUID_LIBDIR) $< -o $@
	$(LUA) test/lua_uuid_test.lua

%.o: %.c
	$(CC) -c $(CFLAGS) -fPIC $(LUA_INCDIR) $(UUID_INCDIR) $< -o $@

install: lua_uuid.so
	cp lua_uuid.so $(INST_LIBDIR)

clean:
	rm -f *.so *.o *.rock
