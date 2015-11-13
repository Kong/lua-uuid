package = "lua_uuid"
version = "0.1-7"
source = {
  url = "https://github.com/Mashape/lua-uuid/archive/0.1-7.tar.gz",
  dir = "lua-uuid-0.1-7"
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
  type = "make",
  build_variables = {
    CFLAGS="$(CFLAGS)",
    LIBFLAG="$(LIBFLAG)",
    LUA_LIBDIR="$(LUA_LIBDIR)",
    LUA_INCDIR="$(LUA_INCDIR)"
  },
  install_variables = {
    INST_LIBDIR = "$(LIBDIR)"
  }
}