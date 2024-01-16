
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


