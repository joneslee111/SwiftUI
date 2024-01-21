// DAY 08 CHECKPOINT 4

// Write a function that accepts an integer from 1 through 10,000
// return the integer square root of that number
// some catches:
// 1. You can't use swifts built in sqrt() function or similar - you need to find the square root yourself.
// 2. if the number is less than 1 or greater than 10,000 you should throw an "out of bounds" error
// 3. you should only consider integer square roots - dont worry about the square root of 3 being 1.732, for example
// 4. if you cant find the square root, throw a "no root" error

enum OutOfBounds: Error {
    case tooLow, tooHigh, noSquareRoot
}

func squareRoot(num: Int) throws {
    var result = 0
    
    if num < 1 { throw OutOfBounds.tooLow }
    if num > 10_000 { throw OutOfBounds.tooHigh }
    
    for i in 1...num {
        result = i * i
        if result == num {
            print("The square root of \(num) is \(i)")
            break
        }
    }
    
    if result != num {
        throw OutOfBounds.noSquareRoot
    }
}

do {
    try squareRoot(num: 225)
} catch OutOfBounds.tooLow {
    print("Too low of a number, try a number between 1 and 10,000")
} catch OutOfBounds.tooHigh {
    print("Too high of a number, try a number between 1 and 10,000")
} catch OutOfBounds.noSquareRoot {
    print("No whole square root. Try another number")
}


