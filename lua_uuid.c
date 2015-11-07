/***
Utility for generating UUIDs

@license MIT
@module lua_uuid
*/
#define LUA_LIB
#include <lua.h>
#include <lauxlib.h>
#include <uuid/uuid.h>

#if LUA_VERSION_NUM < 502
# define luaL_newlib(L,l) (lua_newtable(L), luaL_register(L,NULL,l))
# define lua_rawlen lua_objlen
#endif

/// Generate an UUID
// @return uuid_str
// @function generate()
static int generate(lua_State *L) {

    // Generate UUID
    uuid_t uuid;
    uuid_generate(uuid);

    // Unparse to a string
    char uuid_str[37]; // For example: "1b4e28ba-2fa1-11d2-883f-0016d3cca427" + "\0"
    uuid_unparse_lower(uuid, uuid_str);

    lua_pushstring(L, uuid_str);
    return 1;
}

static const luaL_Reg lua_uuid[] = {
    {"generate", generate},
    {NULL, NULL}
};

int luaopen_lua_uuid(lua_State *L){
    luaL_newlib(L, lua_uuid);
    return 1;
}