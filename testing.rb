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
    @@totalDogs = 0 # class variable
    puts "this runs" 
    def initialize(name)
        @name = name # instance variable
        @legs = 4
        @ears = 2
        @tail = true
        @@totalDogs += 1
    end
    def Dog.total # class function
        @@totalDogs
    end
    def Dog.stuff(myarg)
        puts myarg
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
    stuff :athing # treats this like a string
end

class SmallDog < Dog
    stuff :athing
end

Spot = Dog.new("Spot")
Fluffy = SmallDog.new("Fluffy")
Fluffy.setLegs(3)

puts Spot.legs
puts Fluffy.legs
puts Spot.name
puts Fluffy.name
puts Dog.total

## OOP Masterclass II

class Person 
    def initialize name, age = 0
        @name = name
        @age = age
    end

    def birthday
        @age += 1
    end
    
    def speak
        puts "say words"
    end

    def haveChild name
        return Baby.new(name)
    end
    attr_accessor :name, :age
end


class Baby < Person 
    def initialize name
        super
    end

    def birthday
        @age += 1
        if(@age >= 18)
            return Person.new(@name, @age)
        end
    end

    def speak
        puts "waaah"
    end
end

Bob = Person.new("Bob", 30)

Stewie = Bob.haveChild("Stewie")

puts Stewie.age

puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age
puts Stewie.birthday
puts Stewie.age

