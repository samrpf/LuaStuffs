-- LuaStuffs Package Manager
-- Copyright (c) 2022 samr
-- See the LICENSE file for more information.

json = require "lunajson"

-- Decode info file
luas = io.open("src/luas.json", "r")
info = json.decode(luas:read())
luas:close()

print("=== Package Manager ===")
print("Getting package index...")
-- -- Getting index file
-- os.execute("curl " .. info["index"] .. " >> src/index.json")

-- decode index file
ixfile = io.open("src/index.json")
ix = json.decode(ixfile:read())
ixfile:close()
print("Fetched revision " .. ix["rev"])

print("The Good Stuff")
--[[ for loop here
for i, goodpkg in ipairs(ix["goodpkgs"]) do
    print("")
end
]]
print("Other")
print("[w] Open index")
print("[x] Manage my packages")
print("[y] Update index")
print("[z] Exit package manager")

print("This is currently only an example.")
print("The package manager system will be made in a future update.")
