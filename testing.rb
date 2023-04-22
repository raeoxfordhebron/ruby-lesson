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

my_arr = [1,2,3,4,5,6,7]
puts(my_arr[3])

for num in my_arr do
    puts(num)
end

# Concatenation
string1 = 'Hello'
string2 = 'World'

puts(string1 + ' ' + string2)

# Interpolation
puts("#{string1} #{string2}")

# Methods
def HelloWorld()
    puts('Hello World')
end

HelloWorld()

def GoodbyeWorld (x = 'Hello', y = 'World')
    return "#{x} #{y}"
end

puts(GoodbyeWorld())