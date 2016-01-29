# lua_uuid

Lua library that generate UUIDs leveraging [libuuid](http://linux.die.net/man/3/libuuid).

## Requirements

The `uuid/uuid.h` header must be available in the system `INCLUDE_PATH`, otherwise you will hit an error like:

> ld: library not found for -luuid  
> …  
> Failed compiling module lua_uuid.so

* Mac OS X
  * `brew install ossp-uuid`
* Debian Linux; Ubuntu
  * `apt-get install uuid-dev`


## Usage

To generate a new UUID string:

```lua
local uuid = require "lua_uuid"
local uuid_str = uuid()

print("New UUID: "..uuid_str)
```
