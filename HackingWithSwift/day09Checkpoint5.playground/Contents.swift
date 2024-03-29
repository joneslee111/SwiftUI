// CHECKPOINT 5

// Filter out any numbers that are even
// Sort the array in ascending order
// Map them to strings in the format “7 is a lucky number”
// Print the resulting array, one item per line

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let solve = { (numbers: [Int]) in
    numbers.filter { !$0.isMultiple(of: 2) }
    .sorted()
    .map { print("\($0) is a lucky number.") }
}
print("Lucky Number ===========")

solve(luckyNumbers)

