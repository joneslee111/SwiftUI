// FUNCTIONS, PART ONE

// functions let us wrap up piece of code so they can be used in lots of places.
// we can send data into functions to customise how they work, and get back data that tells us the result that was calculated


// HOW TO REUSE CODE WITH FUNCTIONS

// when you write code you like and want to use again and again, you should consider putting it into a function
// functions are just chunks of code you've split off from the rest of your program, and given a name so you can refer to them easily
print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")
// this is a welcome message for n app, you might want it printed when the app launches or when the user asks for help
// if you wanted this in more than one place, you could put it into a function
// where we can pull it out, give it a name and run it whenever and wherever we need.
// for example:
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
// this starts with the func keyword, which marks the start of a function
// we name the function showWelcome. It can be any name you want but should be memorable
// the body of the function is contained within open and closed braces
// the () are used when you create a function, but also when you call a function

// when we want to call the function, we write it like thus:
showWelcome()
// this is known as the functions call site
// the () add configuraiton options for our functions - we get to pass in data that customises the way the function works, resulting in it being more flexible

// we canmake our own functions that are open to configuraiton, all by putting extra code between the parenthesis.
// eg:
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)
// the number: Int inside the parenthesis is called a parameter, and it's our customisation point.
// it means that whoever calls this function must pass in an integer here
// inside the function, number is available to use like any other constant

printTimesTables(number: 5)
// in this 5 is the argument: it is the actual value that gets sent into the function to work with, used to fill number

// parameters are the placeholders
// arguments are the actual value


// HOW TO RETURN VALUES FROM FUNCTONS

// functions also send data back - the perform some computation, then return the result
// swift has lots of these functions built in. For example, import Cocoa at the top of the file
// this includes a variety of mathematical functions such as sqrt() for calculating the square roo of a number
// the sqrt() function acceps one parameter, which is the number we want to calculate:
let root = sqrt(169)
print(root)

// if you want to return your own value from a function, you need to do two things:
// - write an arrow then a data type before your functions opening brace, which tells swift what kind of data will get sent back
// - use the return keyword to send back your data
// for example, if you want to roll a dice in various parts of your program,
// but rather than always forcing the dice roll to use a 6-sided dice you could instead make a function:
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
// this says the function must return an integer

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
// this creates a new function called areLettersIdentical()
// the function accepts two string parameters
// the funcion says it returns a Bool, so at some point we must always return either true or false
// inside the function body, we sort both strings
// then we use == to compare the strings
// if they are the same it will return true, else it will return false
// we can refactor this to:
func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}


func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
// this is a single expression



// HOW TO RETURN MULTIPLE VALUES FROM FUNCTIONS

// when you want to return a single value from a function, you write an arrow and a data type before your functions opening brace, like this:
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}
// if you want to return two or more values from a function, you could use an array
// an array could be problematic, so we could use a dictionary instead, but that also cold be problematic

// we could use instead, tuples. Like arrays, ditionaries, and sets, tuples let us put multiple pieces of data into a single variable,
// but unlike those other options tuples have a fixed size and can have a variety of data types
// for example:
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
// our return type is (firstNane: String, lastName: String), which is a tuple containing two strings
// each string in our tuple has a name. These arent in quotes: they are specific names for each item in our tuple
// inside the function we send bck a tuple containing all the elements we promised, attached to the names: firstName is being set to "Taylor", etc
// When we call getUser(), we can read the tuples values using the key names: firstName, lastName, etc.

// tuples seem similar to dictionaries, but they are different:
// - When you access values in a dictionary, Swift can't know ahead of time whether they are present or not.
// - When you access values in a tuple, Swift does know ahed of time that it is available bevause the tuple says it will be available
// - We access values using user.firstName: it's not a string, so theres no chance of typos
// - Our dictionary might contain hundreds of other values alongside "firstName", but our tuple can't -
// we must list all the values it will contain, and as a result it's guaranteed to contain them all and nothing else.

// tuples have a clear dvantage of dictionaries: we specify exactly which values will exist and what types they have,
// whereas dictionaries may or may not contain the values we're asking for.

// there are three more importnt things to know when using tuples:
// - If you're returning a tuple from a function, Swift already knows the names you're giving each item in the tuple,
// so you dont need to repeat them when using return, like:
func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
// - sometimes you'll find you're given tuples where the elements dont have naes.
// when this occurs you can access the tuple's elements using numerical indices starting from 0, like:
func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)")
// - if a function returns a tuple you can actually pull the tuple apart into individual values if you want to


