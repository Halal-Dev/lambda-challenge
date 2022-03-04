-- https://github.com/rxi/json.lua

_G.json = require "json"
_G.test1 = require("test/test1")
_G.test_to_run = {}

local T = {}

print(result)
-- Lua implementation of PHP scandir function
    function scandir(directory)
        local i, t, popen = 0, {}, io.popen
        local pfile = popen('ls -a "'..directory..'"')
        for filename in pfile:lines() do
            i = i + 1
            t[i] = filename
        end
        pfile:close()
        return t
    end

function T.discoverTests(repertory)

    local disc = {}

    function disc.scanrep()
    
        local i, t, popen = 0, {}, io.popen -- set a handle to the file (https://www.tutorialspoint.com/io-popen-function-in-lua-programming)
        local pfile = popen('ls -a "'..repertory..'"') -- executes ls -a to get all files in current directory
        for filename in pfile:lines() do -- loop troug each line returned by cmd
            i = i + 1 
            t[i] = filename
        end
        pfile:close()
        return t

    end
    
end

print(assert(_G.test1.test1(1,2) == 3))

