
// HOW TO STORE ORDERED DATA IN ARRAYS

var beatles = ["John", "Paul", "George", "Ringo"]
let number = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
// swift counts an tiem's index from zero rather than one"
print(beatles[0])
// if the array is variable, you can modify it after creating it. For example, you can use append():
beatles.append("Lee")
// you can do it more than once:
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
// swift wont allow you to add a different type of data though
// there are some useful functionalities:
// you can use .count to read how many items are in an array:
print(beatles.count)
// you can remove items from an array by either remove(at:) to remove one item at a specific index, or removeAll() to remove everything:
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)
// you can check whether an array contains a particular item by using contains() :
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))
// you can sor an array using sorted():
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
// you can rverse an array by calling reversed()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// HOW TO STORE AND FIND DATA IN DICTIONARIES

// dictionaries don't store items according to their position like arrays do, but instead let us decide where items should be stored:
let employee2 = [
    "name": "Jerry Cole",
    "job": "Chef",
    "location": "Lancaster "
]
// swift calls the strings on the left the keys to the dictionary, and the strings on the right are the values
// when it comes to reading data out from the dictionary, you can use the same keys you used when creating it:
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])


// HOW TO USE SETS FOR FAST DATA LOOKUP

// a third common way to group data is called a set - they are similar to arrays, ecept you cant add duplicate items, and they dont store their items in a particular order
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)
// when adding items to a set is visible when you add items individually:
var people1 = Set<String>()
people1.insert("Denzel Washington")
people1.insert("Tom Cruise")
people1.insert("Nicolas Cage")
people1.insert("Samuel L Jackson")
// we're using insert(), when we had an array of strings we added items by calling append()


// HOW TO CREATE AND USE ENUMS

// an enum - short for enumeration - is a set of named values we can create and use in our code.
// They don't have any special meaning to swift, but they are more efficient and safer
// we can write an enum like this:
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
// this calls the new enum Weekday, and provides five cases to handle the five weekdays
// we would then do this instead of using strings:
var day = Weekday.monday
day = Weekday.tuesday
print(day)
day = Weekday.friday
print(day)
// using enums means you can't accidentally make a typo like you could if you used a string
// you can make using enums easier, by just writing case once if you have many cases:
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
// Although it isn’t visible here, one major benefit of enums is that Swift stores them in an optimized form – when we say Weekday.monday Swift is likely to store that using a single integer such as 0, which is much more efficient to store and check than the letters M, o, n, d, a, y.

