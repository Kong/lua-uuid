package = "lua_uuid"
version = "0.1-1"
source = {
  url = "https://github.com/Mashape/lua-uuid/archive/0.1-1.tar.gz",
  dir = "lua_uuid-0.1-1"
}
description = {
  summary = "UUID generation",
  detailed = [[
    This is an utility that leverages libuuid to generate UUID strings
  ]],
  homepage = "https://github.com/Mashape/lua-uuid",
  license = "MIT" 
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    lua_uuid = {
      sources = {"lua_uuid.c"},
    }
  }
}