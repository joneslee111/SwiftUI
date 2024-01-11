import Cocoa

// HOW TO STORE TRUTH WITH BOOLEANS

// making a Boolean is just like making other data types:
let goodDogs = true
let gameOver1 = false
let isMultiple = 120.isMultiple(of: 3)

// we can flip a boolean vvalue like this:
var isAuthenitcated = false
isAuthenitcated = !isAuthenitcated
print(isAuthenitcated)
isAuthenitcated = !isAuthenitcated
print(isAuthenitcated)

// booleans do have extra functionality that can be useful.
// In particular, if you call toggle() on a boolean it will flip a true value to false and vice versa
var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)
gameOver.toggle()
print(gameOver)


// HOW TO JOIN STRINGS TOGETHER

// swift gives us two ways to combine strings together: joining them using +, and string interpolation
let firstPart = "Hell, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)
// you can do it as many times if you need:
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)
// string interpolation lets us efficiently create strings from other strings, but also from integers, decimals, and more:
let name = "Reagan"
let age = 27
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
// String interpolation is much more efficient than using + to join strings one by one,
// but there’s another important benefit too: you can pull in integers, decimals, and more with no extra work.
let missionMessage = "Apollo \(number) landed on the moon."
