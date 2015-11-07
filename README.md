# lua_uuid

Lua library that generate UUIDs leveraging libuuid.

## Usage

To generate an unique UUID string:

```lua
local lua_uuid = require "lua_uuid"
local uuid_str = lua_uuid.generate()

print("The UUID is "..uuid_str)
```