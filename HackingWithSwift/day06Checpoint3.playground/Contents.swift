import Cocoa

// loop from 1 through 100
// for each number:
// if its a multiple of 3, print "fizz"
// if its a multiple of 5, print "buzz"
// if its a multiple of both, print "fizzbuzz"
// otherwise print number

for i in 1...100 {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    }
    print(i)
}


// additions:
// count how many respective fizz, buzz, and fizzbuzz's there are
var countFizz = 0
var countBuzz = 0
var countFizzBuzz = 0

for i in 1...100 {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("FizzBuzz")
        countFizzBuzz += 1
    } else if i % 3 == 0 {
        print("Fizz")
        countFizz += 1
    } else if i % 5 == 0 {
        print("Buzz")
        countBuzz += 1
    }
    print(i)
}
print("There are \(countFizz) Fizz's")
print("There are \(countBuzz) Buzz's")
print("There are \(countFizzBuzz) FizzBuzz's")
