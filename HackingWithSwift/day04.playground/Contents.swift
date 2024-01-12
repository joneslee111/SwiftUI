import Cocoa

// HOW TO USE TYPE ANOTATIONS

// Swift is able to figure out what type of data a constant or variable holds based on what we assign to it.
// However, sometimes we don’t want to assign a value immediately,
// or sometimes we want to override Swift’s choice of type, and that’s where type annotations come in.

// So far we’ve been making constants and variables like this:
let surname = "Lasso"
var score = 0
// This uses type inference: Swift infers that surname is a string because we’re assigning text to it, 
// and then infers that score is an integer because we’re assigning a whole number to it.

// Type annotations let us be explicit about what data types we want, and look like this:
let surname: String = "Lasso"
var score: Int = 0
// Now we’re being explicit: surname must be a string, and score must be an integer.
// That’s exactly what Swift’s type inference would have done anyway, but sometimes it isn’t – sometimes you will want to choose a different type.

// For example, maybe score is a decimal because the user can get half points, so you’d write this:
var score: Double = 0
// Without the : Double part Swift would infer that to be an integer, but we’re overriding that and saying it’s definitely a decimal number.

// WHY DOES SWIFT HAVE TYPE ANNOTATIONS?

// The answer is primarily one of three reasons:
// 1. Swift can't figure out what type should be used
// 2. You want Swift to use a different type from its default
// 3. You don't want to assign a value just yet

// Number one usually occurs only in more advanced code. For example:
// if you were loading some data from the internet tht you know happens to be the name of your local politician
// swift can't know that ahead of time so you'll need to tell it

// Number two is quite common, a simple example is trying to create a double variable without having to constantly write ".0" everywhere:
var percentage: Double = 99

// Number three happens when you want to tell swift that a variable is going to exist, but you don't want to set its value yet. For example:
var name: String


// WHY WOULD YOU WANT TO CREATE AN EMPTY COLLECTION?
// There are times when you knoe sll of your items for an array for example, and the rest of the program is just using that fixed data.
// Sometimes, you don't know all of your data up front, and in those cases its more common to create an empty collection then add things later.
