#! /usr/bin/lua

local api = require 'moonwalk/init'

local connection = api.get_connection(...)
local send_head = connection.send_head

function connection:send_head(status, headers) 
  headers['Access-Control-Allow-Origin'] = '*'
  return send_head(self, status, headers)
end

api.register 'user'


-- api.handle_request(...)
connection:handle_request()

