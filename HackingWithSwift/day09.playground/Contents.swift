// DAY 09 - CLOSURES

// HOW TO CREATE AND USE CLOSURES

// if you wanted to skip creating a seperate function, and just assign the
// functionality directly to a constant or variable, you can and its called closure expression
// which is essentially a function that takes no parameters and doesnt return a value
// -  a chunk of code we can pass around and call whenever we want:
let sayHello = {
    print("Hi there!")
}

sayHello()

// if you want the closure to accept parameters, they need to be written in a special way.
// the closure starts and ends with braces, which means we can't put code outside those braces to control parameters or return value.
// swifts workaround to this is that we can put the same information inside the braces like this:
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}
// in is used to mark the end of the parameters and return type - everything after that is the body of the closure itself.

// an example of a type annotation is:
var greetCopy: () -> Void = greetUser
// 1. The empty parentheses marks a function that takes no parameters
// 2. the arrow means just what it means when creating a function: we're about to declare the return type for the function.
// 3. void means "nothing" - this function returns nothing. Sometimes you might see this written as (),
// but we usually avoid that because it can be confused with the empty parameter list.


// WHAT ARE CLOSURES AND WHY DOES SWIFT LOVE THEM SO MUCH?
    
// Closures are one of the most powerful features of Swift

// One of the most common reasons for closures in Swift is to store functionality
// - to be able to say "here's some work i want you to do at some point, but not necessarily now"
// Some examples:
// 1. Running some code after a delay
// 2. Running some code after an animation has finished
// 3. Running some code when a download has finished
// 4. Running some code when a user has selected an option from the menu

// Closures let us wrap up some functionality in a saingle variabe, then store that somewhere
// We can also return it from a function, and store the closure somewhere else


// HOW TO USE TRAILING CLOSURES AND SHORTHAND SYNTAX

// Here's the code we ended up with at the end of the previous chapter
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)
// sorted() can accept any kind of function to do custom sorting, with one rule:
// - that function must accept two items from the array in question (that’s two strings here),
// - and return a Boolean set to true if the first string should be sorted before the second.
// in this code, the function we provide to sorted() must provide two strings and
// return a Boolean, so why do we need to repeat ourselves in our closure?

// We don't. We don't need to specify the types of our two parameters because they must be strings,
// and we dont need to specify a return type because it must be a boolean, so we rewrite it to:
let captainFirstTeam = team.sorted(by: { name1, name2 in })

// There's another way Swift can make closures less cluttered:
// - Swift can automatically provide parameter names for us, using shorthand syntax.
// With this, we don't even write name1, name2 in any more, and instead rely on specially named variables that Swift provides for ur:
// - $0 and $1, for the first and second strings respectively.
// Our code then becomes:
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}
// if our sorted() call was simpeler - e.g. if we just wanted to do a reverse sort then:
let reverseTeam = team.sorted {
    return $0 > $1
}
// in is used to mark the end of the parameters and return type - Everything after that is the body of the closure itself.
// we can can remove the return and get it down to almost nothing:
let reverseTeam = team.sorted { $0 > $1 }

// there are no fixed rules about when to use shorthand syntx and when not to
// but you could follow this and use shorthand syntax unless and of the following are true:
// 1. The closure's code is long
// 2. $ and friends are used more than once each
// 3. You get three or more parameters (e.g. $2, $3, etc)

// two more examples of closures are:

// firstly, the filter() function lets us run some code on every item in the array
// it will send back a new array containing every item that reutrns true for the function
// We could find all team players whose name begins with T like this:
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)
// This will print ["Tiffany", "Tasha"], because those are the only two team membrs whose name begins with T

// The second is the map() function that lets us transform every item in the array using some code of our choosing,
// and sends back a new array of all the transformed items:
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
// This will print ["GLORIA", "SUZANNE", "PIPER", "TIFFANY", "TASHA"], because it has uppercased every name and produced a new array from the result.
// When working with map(), the type you return doesnt have to be the same as the type you started with
// - you could convert an array of integers to an array of strings for example.

// You'll use closures a lot with SwiftUI:
// 1. When you create a list of data on the screen, SwiftUI will ask you to provide a function
// that accepts one item from the list and converts it something it can display on-screen
// 2. When you create a button, SwiftUI will ask you to provide one function to execute when the
// button is pressed, and another to generate the contents of the button - a picture, or text etc
// 3. Even just puttin stacking pieces of text vertically is done using a closure.


// HOW TO ACCEPT FUNCTIONS AS PARAMETERS

// Here's a function that generates an array of integers by repeating a function a certain number of times:
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
// Breaking that down:
// 1. The function is called makeArray(). It takes two parameters, one of which is the number of integers we want, and also returns an array of integers.
// 2. The second parameter is a function. This accepts no parameters itself, but will return one integer every time it's called
// 3. Inside makeArray() we create a new empty array of integers, then loop as many times as requested.
// 4. Each time the loop goes around we call the generator function that was passed in as a paremeter.
// This will return one new integer, so we put that into the numbers array.
// 5. Finally the finished array is returned

// The complex part of this code is the first line:
func makeArray(size: Int, using generator: () -> Int) -> [Int] {}
    // If you split it you should be able to read it linearly:
    // 1. We're creating a new function
    // 2. The function is called makeArray()
    // 3. The first parameter is an integer called size
    // 4. The second parameter is a function called generator, which itself accepts no parameters and returns an integer
    // 5. The whole thing - makeArray() - returns an array of integers.
    
// The result is that we can now make arbitrary-sized integer arrays,
// passing in a function that should be used to generate each number:
    
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

    print(rolls)
// this same functionality works with dedicated functions too, so we could write something like this:

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)
