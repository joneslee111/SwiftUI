
// HOW TO USE A FOR LOOP TO REPEAT

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
// this loops over all the items in platforms, putting them one by one into os.
// os hasn't been created elsewhere; it's created for us as part of the loop and made available only inside the opening and closing braces.
// insed the braces is the code we want to run for each item in the array, so the code wull print four lines - one for each loop item.
// first it puts "iOS" in there then calls print(), then it puts "macOS" in there and calls print(), then "tvOS", then "watchOS".

// to make things clearer, we give these things common names:
// - we call the code inside the brace the loop body
// - we call one cycle through the loop body a loop iteration
// - we call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.

//Rather than looping over an array, you can also loop over a fixed range of numbers. For example, we could print out the 5 times table from 1 through 12 like this:
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
// the 1...12 part is a range, and means 'al integer numbers between 1 and 12, as well as 1 and 12 themselve.
// rnages are their own unique data type in swift
// you can also put loops inside of loops, called nested loops:
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}
// swift also has a way to exlude the final number: ..<:
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
// ..< is really helpful for working with arrays, where we count from 0 and often want to count up to but excluding the number of items in the array.

// sometimes you dont want the loop variable, you dont want the i or j because you dont use it, so you use an _:
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)


// HOW TO USE A WHILE LOOP TO REPEAT WORK
// Swift has a second kind of loop called while: provide it with a condition, and a while loop will continually execute the loop body until the condition is false.
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")
// this creates an integer counter starting at 10
// it then starts a while loop with the condition countdown > 0
// the loop body - printing the number and subtracting 1 - will run continually until countdown is equal to or below 0
// then the loop will finish and the final message will print

// while loops are useful when you dont know how many times the loop will go around.
// for example if you use random(in:) with Int or Double:
let id = Int.random(in: 1...1000)
print(id)
// this creates a new integer between 1 and 1000
// or:
let amount = Double.random(in:0...1)
print(amount)
// this creates a random decimal between 0 and 1

// we can use this functionality with a while loop to roll a virtual 20-sided dice again and again, ending the loop only when 20 is rolled:

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat. \(cats)")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var number: Int = 10
while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}

// HOW TO SKIP LOOP ITEMS WITH BREAK AND CONTINUE

// swift gives us two ways to skip one or more items in a loop:
// continue skips the current loop iteration
// break skips all remaining iterations

//Let’s look at them individually, starting with continue.
//When you’re looping over an array of data, Swift will take out one item from the
//array and execute the loop body using it.
//If you call continue inside that loop body, Swift will immediately stop executing the current
//loop iteration and jump to the next item in the loop, where it will carry on as normal.
//This is commonly used near the start of loops, where you eliminate loop variables
//that don’t pass a test of your choosing.
// example:
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
// this creates an array of filename strings
// it then loops over each one and checks to make sure it has the suffix '.jpg'
// continue is used with all the filenames failing that test, so the rest of the loop body is skipped

// As for break, that exits a loop immediately and skips all remaining iterations.
// To demonstrate this, we could write some code to calculate 10 common multiples for two numbers:
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)
// this creates two constants to hold two numbers
// it creates an integer array variable that will store common multiples of our two numbers
// it counts from 1 through 100,000, assigning each loop variable to i
// if i is a multiple of both the first and second numbers, it appends it to the int array
// once it hits 10 multiples, it calls break to exit the loop
// then prints out the resulting array

// So, use continue when you want to skip the rest of the current loop iteration,
// and use break when you want to skip all remaining loop iterations.


// WHY DOES SWIFT HAVE LABELED STATEMENTS?

// labeled statements allow us to name certain parts of our code, its most commonly used for breaking out of a nested loop
// example:
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]


outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


