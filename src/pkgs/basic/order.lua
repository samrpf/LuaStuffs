-- Check if numbers are in order
-- samrcode on github
print("Use this tool to see if a set of numbers is in order.")
-- Check amount of numbers
print("How many numbers are there?")
amount = io.read("*n")
-- get input
print("Type the numbers:")
numbers = {}
for i = 1, amount, 1 do
    numbers[i] = io.read("*n")
end

inorder = {}
for i, number in ipairs(numbers), 1 do
    if number >= numbers[i + 1] then
        inorder[i] = true
    else
        inorder[i] = false
    end
end

if inorder then
    print("The set of numbers is in order.")
else
    print("The set of numbers is not in order.")
end
