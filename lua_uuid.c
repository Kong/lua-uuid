/***
Utility for generating UUIDs by wrapping libuuid's generate().

@license MIT
@module lua_uuid
*/
#include <lua.h>
#include <lauxlib.h>
#include <uuid/uuid.h>

/// Generate a UUID
// @return uuid_str
// @function generate()
static int generate(lua_State *L) {
    uuid_t uuid;
    char uuid_str[37];

    uuid_generate(uuid);
    uuid_unparse_lower(uuid, uuid_str);

    lua_pushstring(L, uuid_str);
    return 1;
}

int luaopen_lua_uuid(lua_State *L) {
    lua_pushcfunction(L, generate);
    return 1;
}
