/*:
 ## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home).")
}

introduction(name: "Mary", home: "Carlifonia", age: 32)
introduction(name: "John", home: "New York", age: 23)

/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(_ first_arg: Int, second_arg: Int) {
    let result = first_arg + second_arg - 2
    print(result)
}

almostAddition(10, second_arg: 25)
/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(_ first_arg: Int, by second_arg: Int) {
    print(first_arg * second_arg)
}

multiply(2, by: 5)
//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
