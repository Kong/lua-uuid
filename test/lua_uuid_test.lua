local lua_uuid = require "lua_uuid"

assert(lua_uuid.generate())

local first = lua_uuid.generate()
local second = lua_uuid.generate()

assert(first ~= second)