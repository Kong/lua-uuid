package.path = package.path..";./?.lua"

local uuid = require "lua_uuid"

assert(type(uuid) == "function")

local first = uuid()
local second = uuid()

assert(first ~= second)
assert(type(uuid()) == "string")
