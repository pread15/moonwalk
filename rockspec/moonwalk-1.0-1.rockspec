package = "moonwalk"
version = "1.0-1"
source = { url = "moonwalk", dir = "moonwalk" }
description = {

   summary = "Zero-friction REST APIs for Lua.",
   
   detailed = [[Moonwalk is a Swagger server implementation for Lua.
   
Moonwalk is designed to work under various host environments. 
Currently includes support for CGI, Mongoose, Civetweb, and LuaNode.
Support can easily be added for other host environments.]],

   homepage = "https://github.com/abadc0de/moonwalk",
   
   license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = {
   type = "builtin",
   -- TODO: generate this damn thing
   modules = {
      
      ["moonwalk.api"] = "api.lua",
      ["moonwalk.api.class"] = "api/class.lua",
      ["moonwalk.api.model"] = "api/model.lua",
      ["moonwalk.api.operation"] = "api/operation.lua",
      
      ["moonwalk.connection"] = "connection.lua",
      ["moonwalk.connection.abstract"] = "connection/abstract.lua",
      ["moonwalk.connection.cgi"] = "connection/cgi.lua",
      ["moonwalk.connection.luanode"] = "connection/luanode.lua",
      ["moonwalk.connection.mongoose"] = "connection/mongoose.lua",
      ["moonwalk.connection.socket"] = "connection/socket.lua",
      
      ["moonwalk.drive"] = "drive.lua",
      
      ["moonwalk.lib.json"] = "lib/json.lua",
      ["moonwalk.lib.markdown"] = "lib/markdown.lua",
      ["moonwalk.lib.memoize"] = "lib/memoize.lua",
      
      ["moonwalk.proto"] = "proto.lua",
      ["moonwalk.resources"] = "resources.lua",
      
      ["moonwalk.server.luanode"] = "server/luanode.lua",
      ["moonwalk.server.socket"] = "server/socket.lua",
      
      ["moonwalk.sugar"] = "sugar.lua",
      ["moonwalk.util"] = "util.lua",
      ["moonwalk.validator"] = "validator.lua",
   }
}
