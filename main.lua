#!/usr/bin/lua5.1
-- LuaStuffs
-- Copyright (c) 2022 samr
-- See the LICENSE file for more information.

json = require "lunajson"

-- get info file, and store it into variable luas
luas = io.open("src/luas.json", "r")

info = json.decode(luas:read())

luas:close()

-- get package information
pkgsloc = info["pkgs"][1] -- pkgs folder location
pkgfloc = info["pkgs"][2] -- pkgs.json file location
alonesloc = info["alone"][1] -- alone folder location
alonefloc = info["alone"][2] -- alone.json file location

-- turn package information into tables
--- get pkg.json
pkgfile = io.open(pkgfloc)
pkgf = json.decode(pkgfile:read())
pkgfile:close()
--- get alone.json
alonefile = io.open(alonefloc)
alonef = json.decode(alonefile:read())
alonefile:close()

-- BEGIN --
print("/ LuaStuffs /")
print("Copyright (c) 2022 samr")
print(pkgf["count"] .. " packages loaded") -- print package count
print("Welcome, " .. info["uname"] .. "!")
print() -- newline

-- Options
print("Choose an option: ")

--[[
shortcuts = info["short"]


for i, shortcut in ipairs(shortcuts) do
    print("[" .. i .. "] " .. shortcut[1])
end
]]



print("[x] LuaStuffs Manager")
print("[y] Preferences")
print("[z] Exit")
print()
local opt = io.read("*l") -- get user option

if opt == "x" then
    os.execute("lua " .. info["pkgman"])
elseif opt == "y" then
    os.execute("lua " .. info["pref"])
elseif opt == "z" then --[[ do nothing and exit program ]] else
    --[[
    for i, shortcut in ipairs(shortcuts) do
        if opt == i then
            os.execute("lua " .. shortcut[2])
        end
    end
    ]]
    print("Bad option.")
end
