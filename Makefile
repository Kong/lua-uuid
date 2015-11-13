all: lua_uuid.so

lua_uuid.so: lua_uuid.o
	$(CC) $(LIBFLAG) -luuid -o $@ -L$(LUA_LIBDIR) $<

lua_uuid.o: lua_uuid.c
	$(CC) -c $(CFLAGS) -I$(LUA_INCDIR) $< -o $@

install: lua_uuid.so
	cp lua_uuid.so $(INST_LIBDIR)

clean:
	rm -f lua_uuid.so lua_uuid.o *.rock
