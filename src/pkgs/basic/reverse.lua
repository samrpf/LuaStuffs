-- Text reverser
-- samrcode on github
print("Use this script to reverse text.")
print("Type some text: ")
string = io.read("*l")
reversedString = string.reverse(string)
print("You will get " .. reversedString .. " out of " .. string .. ".")
