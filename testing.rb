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

def GoodbyeWorld (*args) # all arguments will go into an array - args
    return args
end

puts(GoodbyeWorld('Goodbye', 'Rae'))

# Hashes (Objects in Javascript, Dictionary in Python)
my_hash = {"Name" => "Rae Hebron", "Age" => 28}
puts(my_hash["Name"])
puts(my_hash["Age"])

# Functions in Ruby
# BLOCK ( anonymous function )

def myFunc
    yield 5 # waiting for a block to be passed in
    yield 4
    yield 3
end

myFunc {|x| puts x}

# LAMBDA
myLambda = -> (x){x+2} # can only do one expression here

puts myLambda.call(5) # call the function above after the arrow, 5 is the argument passing into the function