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

# PROC
myProc = Proc.new{|x| x + 2} # same thing as above, just different under the hood

puts myProc.call(5)

def theFunc
    myLambda = -> (x){return x+2} # gets it's own execution context 
    myProc = Proc.new{|x| return x + 2} # returning here is the same as returning in theFunc, stops the function
    puts "before lambda"
    myLambda.call(5)
    puts "after lambda"
    myProc.call(5)
    puts "after proc"
end

theFunc

# BINDING
def anotherFunc
    cheese = :gouda
    hello = :provolone
    binding
end

puts anotherFunc.eval('cheese') # grab the cheese variable that exists within local context
puts anotherFunc.eval('hello')

## OOP Masterclass

class Dog
    @@totalDogs = 0
    def initialize(name)
        @name = name
        @legs = 4
        @ears = 2
        @tail = true
        @@totalDogs += 1
    end
    def Dog.total
        @@totalDogs
    end
    def legs
        return @legs
    end
    def setLegs(value)
        @legs = value
    end
    def name
        return @name
    end
    def setName(name)
        @name = name
    end
end

Spot = Dog.new("Spot")
Fluffy = Dog.new("Fluffy")
Fluffy.setLegs(3)

puts Spot.legs
puts Fluffy.legs
puts Spot.name
puts Fluffy.name
puts Dog.total