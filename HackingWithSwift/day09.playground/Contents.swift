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
// but we usually avoid that because it can be confused with the empty parameter list



