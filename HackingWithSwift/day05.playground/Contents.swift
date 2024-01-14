import Cocoa

// HOW TO CHECK A CONDITION IS TRUE OR FALSE

// Programs very often make choices, these chocies are handled with if statemens in swift
// which lets us check a condition and run some code if the condition is true, like this:
if someCondition {
    print("Do something")
}
// the condition starts with IF, which signals to swift we want to chek some kind of condition in our code
// the someCondition is where you write you condition - e.g was the score over 80? Does the array contain more than 3 items?
// if the condition is true - if the score is over 80 - then we print the "Do something" message.
let score = 85

if score > 80 {
    print("Great job!")
}
// in this code, score > 80 is the condition and if the score is greater than 80 "Great job!" will be printed.
// the > symbol is a comparison operator, because it compares two things and returns a boolean result.

// second example condition: if the user entered a name that comes after their friend’s name alphabetically, put the friend’s name first.
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}
// if the string inside ourName comes before the string inside friendName when sorted alphabetically, it prints ourName first then friendName

// third example condition: if adding a number to an array makes it contain more than 3 items, remove the oldest one.
// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

// fourth example condition: if the user was asked to enter their name and typed nothing at all, give them a default name of “Anonymous”.
// we want to check whether the username entered by the user is empty, which we could do like this:

// Create the username variable
var username = "taylorswift13"
// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}
// Now print a welcome message
print("Welcome, \(username)!")
//That "" is an empty string: we start the string and end the string, with nothing in between. By comparing username to that, we’re checking if the user also entered an empty string for their username, which is exactly what we want.

// https://www.hackingwithswif.com/quick-start/beginners/how-to-check-a-condition-is-true-or-false

// HOW TO CHECK MULTIPLE CONDITIONS
// if you want to check for several different values, you can used an advanced condition called else:
let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}
// or if theres even more you can use else if:
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

// As well as using else and else if to make more advanced conditions, you can also check more than one thing. For example, we might want to say “if today’s temperature is over 20 degrees Celsius but under 30, print a message.”
// This has two conditions, so we could write this:
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}
// Although that works well enough, Swift provides a shorter alternative: we can use && to combine two conditions together, and the whole condition will only be true if the two parts inside the condition are true.
// So, we could change our code to this:
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
// https://www.hackingwithswift.com/quick-start/beginners/how-to-check-multiple-conditions

// HOW TO USE SWITCH STATEMENTS TO CHEHCK MULTIPLE CONDITIONS

// we can check condiitons using switch. This also allows us check individual cases one by one:
// Example:
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
// switch statements must be exhaustive: you must ensure all possible vlues are covered.
// there sometimes might be times you have an infinite number of checks, so we use a default case:
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}
// the default will be run if all cases have failed to match.
// https://www.hackingwithswift.com/quick-start/beginners/how-to-use-switch-statements-to-check-multiple-conditions


