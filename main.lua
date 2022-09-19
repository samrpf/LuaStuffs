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
pkgsloc = info["pkgs"][1]
pkgfloc = info["pkgs"][2]
alonesloc = info["alone"][1]
alonefloc = info["alone"][2]

-- turn package information into tables
pkgfile = io.open(pkgfloc)
pkgf = json.decode(pkgfile:read())
pkgfile:close()

alonefile = io.open(alonefloc)
alonef = json.decode(alonefile:read())
alonefile:close()

print("/ LuaStuffs /")
print("Copyright (c) 2022 samr")
print(pkgf["count"] .. " packages loaded")
print("Welcome, " .. info["uname"] .. "!")
print()

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
local opt = io.read("*l")

if opt == "x" then
    os.execute("lua " .. info["pkgman"])
elseif opt == "y" then
    os.execute("lua " .. info["pref"])
elseif opt == "z" then else
    --[[
    for i, shortcut in ipairs(shortcuts) do
        if opt == i then
            os.execute("lua " .. shortcut[2])
        end
    end
    ]]
    print("Bad option.")
end
