-- Character counter
-- samrcode on github
print("Use this tool to count the amount of characters in a phrase.")
print("Type your sequence: ")
userInput = io.read()
charcount = string.len(userInput)
print("The amount of characters in " .. userInput .. " is: " .. charcount .. ".")
