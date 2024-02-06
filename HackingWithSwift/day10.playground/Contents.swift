// DAY 10 - Structs, part one

// HOW TO CREATE YOUR OWN STRUCTS

// Swift's structs let us create our own custom, complex data types, complete with their own variables and functions.
// A simple struct looks like this:
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
// This creates a new type called Album, with 2 stringd constants called title and artist,
// as well as an integer constant called year.
// At this point, Album is just like a String or Int - we can make them, assign values, copy them etc.
// For example, we could make a couple of albums, then print some of their values and call their functions:
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()
// Notice how we can create a new Album as if we were calling a function - we just need to provide values for each of the constants in the order they were defined.
// We’re going to explore structs in detail over the next few chapters, but first I want to give some names to things:
// - Variables and constants that belong to structs are called properties.
// - Functions that belong to structs are called methods.
// - When we create a constant or variable out of a struct, we call that an instance – you might create a dozen unique instances of the Album struct, for example.
// - When we create instances of structs we do so using an initializer like this: Album(title: "Wings", artist: "BTS", year: 2016)
