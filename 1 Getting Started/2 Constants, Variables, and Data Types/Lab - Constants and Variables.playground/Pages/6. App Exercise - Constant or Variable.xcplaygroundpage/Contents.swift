/*:
 ## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
 - Name: The user's name
 - Age: The user's age
 - Number of steps taken today: The number of steps that a user has taken today
 - Goal number of steps: The user's goal for number of steps to take each day
 - Average heart rate: The user's average heart rate over the last 24 hours
 */
let name = "John"
print("User's name is unlikely to change.")
var age = 23
print("User's age will vary year on year.")
var numberOfStepsToday = 500
print("numberOfStepsToday variable will update with every step.")
let goalNumberOfSteps = 400
print("goalNumberOfSteps will be set before the exercise is taken and hence will not vary throughout the activity instance.")
var averageHeartRate = 70
print("Heart rate will fluctuate during the activity and hence need frequent updating.")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
