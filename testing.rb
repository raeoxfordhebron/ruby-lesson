puts "Hello World" # console.log in javascript

# Data Types
myint = 5 
mystr = "Hello World"
myfloat = 65.76
mybool = true

puts(myint, mystr, myfloat, mybool)

# Conditionals
myvar = 5 > 6 # expression
puts(myvar)

unless myvar
    puts('This is false')
else
    puts('This is true')
end

# Loops
count = 0
while true do
    puts('Hello')
    if count == 10
        break
    else
        count += 1
    end
end