#  What is Ruby
#    - Ruby was created by Yukihiro Matsumoto(松本行弘, 1965/4/14-?) in 1993
#    - It's a scripting language
#      -- Interpreted
#      -- Dynamic
#      -- Weakly Typed
#    - Pure Object-Oriented
   
   
#  1  Objects In Ruby
#    1.1  String

######################
"Hello, Ruby"        #
'Hello, Ruby'        #
######################


#    1.2  Number
##########################################
1                                        #
1.0                                      #
1.5                                      #
9999999999999999999999999999999999999999 #
1.3e4 # 1.3x10^4                         #
##########################################                 


#    1.3  Array
###############################
[1, 2, 3]                     #
[[1,2], [3, 4], [5, 6]]       #
[1, 'string', 3, [4, 'five']] #
###############################


#    1.4  Hash
####################
{                  #
  'a' => 'b',      #
  'foo' => 'bar'   #
}                  #
                   #
{                  #
  :a => 'b',       #
  :foo => 'bar'    #
}                  #
####################

#  2  Method
#    2.1  Built-in Methods
###########################
puts('Hello, Ruby')       #
puts 'Hello, Ruby'        #
'Hello, Ruby'.length()    #
'Hello, Ruby'.length      #
'Hello, Ruby'[0]          #
'Hello, Ruby'[0, 5]       #
                          #
2 * 3                     #
2 + 3                     #
###########################

#    2.2  Define New Method
############################
def hello(name)            #
  "Hello, #{name}!"        #
end                        #
                           #
hello 'Ruby'               #
############################

#  3 Variables
#    3.1  Local Variables
#         The name of local variables begins with lowercase letter or understore( _ )
#########################
a = 1                   #
b = a                   #
c = 'Hello'             #
d = a * b               #
#########################

#    3.2  Constant Variables
#         The variables that begins with an uppercase letter is a constant, it can be assigned ONLY ONCE!
#################################
Const = 1                       #
Const = 2 #will raise a warning #
#################################

#  4 Control Flows
############################################## #
if i < 10 then                                 #
  #....                                        #
  #....                                        #
end                                            #
#    Then can be ignored in multi-line scripts #
if i < 10                                      #
  #....                                        #
  #....                                        #
end                                            #
                                               #
while i < 10 then                              #
  #....                                        #
  #....                                        #
end                                            #
                                               #
puts '2 is greater than 1' if 2 > 1            #
if (2 > 1) then puts '2 is greater than 1' end #
                                               #
puts '2 is greater than 1' unless 1 > 2        #
unless 1 > 2 then                              #
  puts '2 is greater than 1'                   #
end                                            #
################################################

#  5 Blocks, Procedure and Lambda Expression
#    5.1  Block is an anonymous section of code that doesn't be bound to any object
#         which can access the data from the context in which it is executed
#    5.2  Procedure is a object, which represents a block. We call it 'Named Block'
#    5.3  Lambda is an expression, which can be used to create a procedure
#    The 3 item above are the same in essence.
################################################
[1, 2, 3].each do |item|                       #
  puts item                                    #
end                                            #
                                               #
[1, 2, 3].each { |item| puts item}             #
                                               #
[1, 2, 3].each { |item|                        #
  puts item                                    #
}                                              #
                                               #
block = Proc.new {|item| puts item}            #
                                               #
# create a procedure using lambda expression   #
block = lambda { |item| puts item}             #
                                               #
block = lambda { |item|                        #
  puts item                                    #
}                                              #
                                               #
block = lambda do |item|                       #
  puts item                                    #
end                                            #
                                               #
[1, 2, 3].each &block                          #
                                               #
book_store = {                                 #
 :java => 'Think in Java',                     #
 :ruby => 'Ruby Way'                           #
}                                              #
                                               #
book_store.each do |k, v|                      #
  puts "#{k}: #{v}"                            #
end                                            #
################################################

#  6 Class
###############################################
class Human                                   #
                                              #
  def initialize(name)                        #
    @name = name                              #
  end                                         #
                                              #
  def greeting                                #
    "Hello, my name is #{@name}"              #
  end                                         #
                                              #
  def speak(word)                             #
    "#{@name} says: #{word}"                  #
  end                                         #
                                              #
  # Attribute Reader                          #
  def name                                    #
    @name                                     #
  end                                         #
                                              #
  # Attribute Writer                          #
  def name=(name)                             #
    @name = name                              #
  end                                         #
end                                           #
                                              #
class Human2                                  #
                                              #
  attr_accessor :name                         #
                                              #
  def initialize(name)                        #
    @name = name if name                      #
    self.initialize unless name               #
  end                                         #
                                              #
  def initialize                              #
    @name = 'Unknown'                         #
  end                                         #
                                              #
  def greeting                                #
    "Hello, my name is #{@name}"              #
  end                                         #
                                              #
  def speak(word)                             #
    "#{@name} says: #{word}"                  #
  end                                         #
                                              #
end                                           #
                                              #
# Instantiate a class                         #
human1 = Human.new 'William'                  #
                                              #
human1.greeting                               #
human1.speak 'Hello!'                         #
                                              #
# Inheritance                                 #
                                              #
class Boy < Human                             #
  def self.gender                             #
    "MALE"                                    #
  end                                         #
                                              #
  def greeting                                #
    puts super                                #
    puts "I am #{Boy.gender}"                 #
  end                                         #
end                                           #
                                              #
Boy.gender                                    #
boy1 = Boy.new "Jack"                         #
###############################################

#  7 Module
#    Modules can be `mixed-in` classes, introducing new functionalities to a class
#    Modules are usually used as namespace.
###############################################

#    7.1  Mix-ins
###############################################
module M                                      #
  def m                                       #
    puts 'm'                                  #
  end                                         #
end                                           #
                                              #
class A                                       #
  include M                                   #
end                                           #
                                              #
A.new.m                                       #
                                              #
#    7.2  Use modules as namespace            #
module Training                               #
  module Ruby                                 #
    class A                                   #
    end                                       #
  end                                         #
end                                           #
                                              #
Training::Ruby::A.new                         #
###############################################

#  8  Misc
#    8.1  Syntax Sugar
######################################################
array = [1, 2, 3]                                    #
array.each { |item| puts item }                      #
                                                     #
array.each_index do |index|                          #
  puts "#{index + 1} => #{array[index]}"             #
end                                                  #
                                                     #
array.map {|item| item % 2 == 0} #=> [2]             #
array.map { |x| x + '!'} #=> ['1!', '2!', '3!']      #
                                                     #
array.sum # => 6                                     #
array.sum { |x| x * x} #=> 1*1 + 2*2 + 3*3 = 14      #
                                                     #
say = 'I love Ruby'                                  #
say['love'] = '*love*'                               #
say #=> I *love* Ruby                                #
######################################################

#    8.2  Visual Methods
#        Methods ends with ? always return a boolean value
#        Methods ends without ! don't change the object it belongs
#        Methods ends with ! will change the object it belongs.
###############################################
[1, 2, 3].empty?   # => false                 #
[].empty?          # => true                  #
                                              #
[2, 1, 3].sort                                #
[2, 1, 3].sort!                               #
                                              #
[1, 2, 3].map { |x| x % 2 == 0}               #
[1, 2, 3].map! { |x| x % 2 == 0}              #
                                              #
"hello".capitalize #=> 'Hello'                #
"hello".capitalize!                           #
###############################################

#    8.3 About Nil
#        nil is a object, its class is NilClass
#        All expressions will be evaluated to true except nil
#############################################
if 1  then puts 1 end                       #
if 0  then puts 1 end                       #
if '' then puts 1 end #will cause a warning #
if [] then puts 1 end                       #
                                            #
puts 1 unless nil                           #
#############################################

#  9 References
#    Offical Site
#      http://ruby-lang.org/
#    Ruby Koans
#      http://rubykoans.com/
#    Ruby Monk
#      https://rubymonk.com/
#    Thinking in Ruby
#      http://thinkinginruby.group.iteye.com/

#  10 Q&A














