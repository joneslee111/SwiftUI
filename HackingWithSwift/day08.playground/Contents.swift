// FUNCTIONS, PART 2

// HOW TO PROVIDE DEFAULT VALUES FOR PARAMETERS

// adding parameters to functions lets us add customisation points,
// so that functions can operate on different data depending on our needs

// swift lets us specify default values for any or all of our parameters.
// example:
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)
// we can now call printTimeTables() in two different ways:
// we can provide both parameters for times when we want it,
// but if we dont then the default value of 12 will be used for end

// WHEN TO USE DEFAULT PARAMETERS FOR FUNCTIONS

// default parameters let us make funcitons easier to call by letting us provide common defaults for parameters
// when we want to call that function using those default values we can just ignore the parameters entirely
// For example, imagine some route finding code such as this:

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}
// this assumes that the people want to drive between two locations by fastest route, without avoiding highways
// we can call this same function in any of thre ways:
findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
// shorter, simpler code most of the time, but flexibility when we need it


// HOW TO HANDLE ERRORS IN FUNCTIONS

// swift makes us handle errors - or at least acknowledge when they might happen
// this takes 3 steps:
// 1. telling seift about the possible errors tat can happen
// 2. writing a function that can flaf up errors if they happen
// 3. calling that function, and handling any errors that might happen

// working through a complete example: if the user asks us to check how strong their password is, we will flag up a serious error if the password is too short or is obvious.
// we start by defining the possible errors that might happen. this means making a new enum that builds on swifts existing Error type:
enum PasswordError: Error {
    case short, obvious
}
// this says there are two possile errors with password: short and obvious
// the next step is to write a function that will trigger one of those errors
// we're going to write a function that checks the strength of a password if its bad
// - fewer than 5 characters or is extremely well known
// then we'll throw an error, but for all other strings we return either "OK", "GOOD", or "EXCELLENT" ratings.
// e.g:
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
// breaking this down...
// 1. if a function is able to throw errors without handling them itself, you must mark the function as throws before the return type
// 2. We don't specify exactly what kind of error is thrown by the function, just that it can throw errors
// 3. being marked with throws does not mean the function must throw errors, only that it might.
// 4. when it comes time to throw an error, we write throw followed by one of out PasswordError cases.
// this immediately exits the function, meaning it wont return a string
// 5. if no errors are thrown, the function must behave like normal - returning a string.

// the next step is to run the function and handle any errors that might happen.
// there are three steps:
// 1. starting a block of work that might throw errors, using do
// 2. calling one or more throwing functions, using try
// handling any thrown errors using catch.

// we could do it like this:
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
// If the checkPassword() function works correctly, it will return a value into result, which is then printed out. 
// But if any errors are thrown (which in this case there will be), the password rating message will never be printed – execution will immediately jump to the catch block.


// try must be written before calling all functions that might throw errors, nd is a visual sign that regular code execution will be interrupted if an error happens

// when you use try, you need to be inside a do block, and make sure you have one or more catch blocks able to handle any errors.
// in some circumstances you can use an alternative written as try!
// this does not require do and catch, but will crash the code if an error is thrown - use it rarely and only if sure an error cant be thrown.


// FUNCTIONS SUMMARY

// - Funcitons let us reuse code easily by carving off chunks of code and giving it a name
// - All functions start with the word func, followed by the function's name.
// the functions body is contained inside opening and closing braces
// - We can add parameters to make our functions more flexible - list them out one by one
// separated by commas: the name of the parameters, then a colon, then the type of the parameter
// - You can control how those parameter names are used externally, either by using a custome
// external parameter name or by usng an _ to disable the external name for the parameter
// - If you think there are certain parameter values you'll use repeatedly, you can make them hav
// a default value so ur function takes less code to write and does the smart thing by default
// - functions can return a value if you want, but if you want to return multiple pieces of data
// from a function you should use a tuple.
// these hold several named elements, but its limited in a way a dictionary is not - you list each element specifically, along with its type
// - Functions can throw errors: you create an enum defining the errors you want to happen,
// throw those errors inside the function as needed, then use do, try and catch to handle them at the call site.
