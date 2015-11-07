LUA ?= lua5.1
LUA_PC ?= lua5.1
LUA_LIBS ?= $(shell pkg-config $(LUA_PC) --libs)
LUA_CFLAGS = $(shell pkg-config $(LUA_PC) --cflags)

CFLAGS ?= -O3 -Wall -Werror

all: lua_uuid.so

%.o: %.c
	$(CC) -c $(CFLAGS) -fPIC $(LUA_CFLAGS) -o $@ $<

lua_uuid.so: lua_uuid.o test/lua_uuid_test.lua
	$(CC) -shared lua_uuid.o $(LUA_LIBS) -o $@
	$(LUA) test/lua_uuid_test.lua

clean:
	rm -f lua_uuid.so lua_uuid.o *.rock
