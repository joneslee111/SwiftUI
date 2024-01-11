import Cocoa


// VARIABLES AND CONSTANTS

var greeting = "Hello, playground"

var name = "Ted"
// var = create a new variable
// name = our variables name -> name it anything but should be descriptive generally
// = = assign something
// "Ted" = the initial value
name = "Rebecca"
name = "Keeley"

// creating a variable means the value can change over time
// if you dont ever want to change a value... you use a constant:
let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "French Bulldog"
// try to prefer using constants over variables wherever posisble
// gives swift chance to optimise code better but also allows swift to stop you changing values by accident


// HOW TO CREATE STRINGS

// assigning text to a variable or constant is called a string
// in swift all strings must start and end with double quotes
let actor = "Denzel Washington"

// you can use double quotes inside the string as long as a backslash is in front of it:
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(quote)

// to mark a multi line string you use triple quotes:
let movie = """
No Country
For Old
Men.
"""
// swift gives us useful functionality to work with its contents.
// you can read the length of a string by writing .count after the name of the variable or constant:
print(actor.count)
// another useful piece of fucntionality is uppercsed(), which send the ame string back in upper case:
print(actor.uppercased())
// anothe rpiece of functionality is hasPrefixed(), which lets us know whether a string starts with some letters of our choosing:
print(actor.hasPrefix("D"))
// also theres hasSuffix()which checks whether a string ends with some text:
print(actor.hasSuffix("testing"))
// strings are case-sensitive in Swift

// HOW TO STORE WHOLE NUMBERS

// when working with whole numbers in Swift, its called integers or Int for short:
var score = 10
// if we're writing out large numbers in swift, we can use underscores so we as humans can read the numbers better, it has no effect on swift:
let reallyBigScore = 100_000_000
print(reallyBigScore)
// you can create integers from other integers, using arithmetic operators:
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)
//below creates a counter variable equal to 10, then adds 5 more to it
var counter = 10
counter = counter + 5
// you can use the shorthand operator instead +=, which adds a number directly to the integer in question:
counter += 7
print(counter)
// this does the same thing with less tying, and these are called compund assignment operators:
counter *= 2
print(counter)
counter -= 4
print(counter)
counter /= 8
print(counter)
// just like strings, integers have useful functionality attached. you can call isMultiple(of:) on an integer to find out whetehr its a multiple of another integer:
let number = 120
print(number.isMultiple(of: 3))

// HOW TO STORE DECIMAL NUMBERS

// when youre working with decimal numbers like 3.166, youre working with floating-point numbers in Swift
let number2 = 0.1 + 0.2
print(number2)

