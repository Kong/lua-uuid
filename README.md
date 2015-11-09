# lua_uuid

Lua library that generate UUIDs leveraging [libuuid](http://linux.die.net/man/3/libuuid).

## Usage

To generate a new UUID string:

```lua
local uuid = require "lua_uuid"
local uuid_str = uuid()

print("New UUID: "..uuid_str)
```
