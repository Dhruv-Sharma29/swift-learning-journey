// ============================================================
// MARK: - Closures
// ============================================================

// A closure is a self-contained block of code.
//
// Simple definition:
// Closure = function without a name
//
// Closures can:
// - Be stored in variables/constants
// - Be passed as arguments to functions
// - Be returned from functions
// - Capture values from their surrounding scope
//
// Basic syntax:
//
// { (parameters) -> ReturnType in
//     statements
// }


// ============================================================
// MARK: - 1. Basic Closure
// ============================================================

let greeting = {
    print("Hello World")
}

greeting()


// ============================================================
// MARK: - 2. Four Types of Closures
// ============================================================


// ------------------------------------------------------------
// 1. No Parameter + No Return
// ------------------------------------------------------------

let noParameterNoReturn = {
    print("No Parameter No Return")
}

noParameterNoReturn()


// ------------------------------------------------------------
// 2. No Parameter + With Return
// ------------------------------------------------------------

let noParameterWithReturn = { () -> String in
    return "No Parameter With Return"
}

print(noParameterWithReturn())


// ------------------------------------------------------------
// 3. With Parameter + No Return
// ------------------------------------------------------------

let withParameterNoReturn = { (name: String) in
    print("Hello \(name)")
}

withParameterNoReturn("Aman")


// ------------------------------------------------------------
// 4. With Parameter + With Return
// ------------------------------------------------------------

let add = { (a: Int, b: Int) -> Int in
    return a + b
}

print(add(10, 20))


// ============================================================
// MARK: - 3. Closure Syntax
// ============================================================

// General syntax:
//
// { (parameters) -> ReturnType in
//     code
// }
//
// Example:

let multiply = { (a: Int, b: Int) -> Int in
    return a * b
}

print(multiply(5, 4))


// ============================================================
// MARK: - 4. Closure Type
// ============================================================

// Closure type:
//
// (Int, Int) -> Int
//
// Means:
// - Takes two Int parameters
// - Returns an Int
//
// Example:

let addition: (Int, Int) -> Int = {
    $0 + $1
}

print(addition(10, 20))


// Another example:
//
// (String) -> Void
//
// Means:
// - Takes a String
// - Returns nothing

let greet: (String) -> Void = {
    print("Hello \($0)")
}

greet("Aman")


// ============================================================
// MARK: - 5. Closure as a Function Parameter
// ============================================================

// A function can accept a closure as a parameter.

func calculate(
    a: Int,
    b: Int,
    operation: (Int, Int) -> Int
) {
    let result = operation(a, b)
    print(result)
}


// Passing a closure

calculate(
    a: 5,
    b: 7,
    operation: {
        (a, b) in
        return a + b
    }
)


// ============================================================
// MARK: - 6. Trailing Closure Syntax
// ============================================================

// If a closure is the LAST parameter of a function,
// we can write it outside the parentheses.
//
// This is called:
// Trailing Closure Syntax
//
// Normal syntax:

calculate(
    a: 5,
    b: 7,
    operation: {
        (a, b) in
        return a + b
    }
)


// Trailing closure syntax:

calculate(a: 5, b: 7) {
    (a, b) in
    return a + b
}


// ============================================================
// MARK: - 7. Implicit Return
// ============================================================

// If a closure contains only ONE expression,
// we can omit the return keyword.
//
// Before:

let subtraction = { (a: Int, b: Int) -> Int in
    return a - b
}

print(subtraction(10, 5))


// Implicit return:

let subtraction2 = { (a: Int, b: Int) -> Int in
    a - b
}

print(subtraction2(10, 5))


// ============================================================
// MARK: - 8. Shorthand Argument Names
// ============================================================

// Swift automatically provides shorthand argument names.
//
// $0 = First parameter
// $1 = Second parameter
// $2 = Third parameter
//
// Example:

let addNumbers: (Int, Int) -> Int = {
    $0 + $1
}

print(addNumbers(10, 20))


// Without shorthand:

let addNumbers2: (Int, Int) -> Int = {
    (a, b) in
    return a + b
}

print(addNumbers2(10, 20))


// With shorthand:

let addNumbers3: (Int, Int) -> Int = {
    $0 + $1
}

print(addNumbers3(10, 20))


// ============================================================
// MARK: - 9. Concise Closure Syntax
// ============================================================

// Closures can become very short.
//
// Full version:

let square = { (number: Int) -> Int in
    return number * number
}

print(square(5))


// Shorter version:

let square2: (Int) -> Int = {
    $0 * $0
}

print(square2(5))


// ============================================================
// MARK: - 10. map()
// ============================================================

// map() is used to TRANSFORM every element
// of a collection.
//
// It returns a NEW collection.
//
// Example:

let numbers = [1, 2, 3, 4, 5]

let doubled = numbers.map { number in
    number * 2
}

print(doubled)


// Output:
//
// [2, 4, 6, 8, 10]


// Using shorthand:

let tripled = numbers.map {
    $0 * 3
}

print(tripled)


// ============================================================
// MARK: - 11. filter()
// ============================================================

// filter() is used to KEEP elements
// that satisfy a condition.
//
// Example:

let evenNumbers = numbers.filter { number in
    number % 2 == 0
}

print(evenNumbers)


// Output:
//
// [2, 4]


// Using shorthand:

let oddNumbers = numbers.filter {
    $0 % 2 != 0
}

print(oddNumbers)


// Output:
//
// [1, 3, 5]


// ============================================================
// MARK: - 12. reduce()
// ============================================================

// reduce() is used to COMBINE all elements
// into a single value.
//
// Example:

let number1 = [1, 2, 3, 4, 5]

let total = number1.reduce(0) { (result, number) in
    result + number
}

print(total)


// Output:
//
// 15


// Step-by-step:
//
// 0 + 1 = 1
// 1 + 2 = 3
// 3 + 3 = 6
// 6 + 4 = 10
// 10 + 5 = 15


// Using shorthand:

let total2 = number1.reduce(0) {
    $0 + $1
}

print(total2)


// ============================================================
// MARK: - 13. map + filter + reduce
// ============================================================

// Problem:
//
// Given marks:
//
// [60, 70, 80, 90, 85]
//
// 1. Increase every mark by 10
// 2. Keep marks greater than 70
// 3. Find the total


let marks = [60, 70, 80, 90, 85]


// Step 1:
// Increase every mark by 10

let increasedMarks = marks.map { mark in
    mark + 10
}

print(increasedMarks)


// Result:
//
// [70, 80, 90, 100, 95]


// Step 2:
// Keep marks greater than 70

let filteredMarks = increasedMarks.filter { mark in
    mark > 70
}

print(filteredMarks)


// Result:
//
// [80, 90, 100, 95]


// Step 3:
// Calculate total

let marksTotal = filteredMarks.reduce(0) { (result, mark) in
    result + mark
}

print(marksTotal)


// Result:
//
// 365


// ============================================================
// MARK: - 14. Chaining map + filter + reduce
// ============================================================

// The above three operations can be combined.

let finalTotal = marks
    .map { mark in
        mark + 10
    }
    .filter { mark in
        mark > 70
    }
    .reduce(0) { (result, mark) in
        result + mark
    }

print(finalTotal)


// Result:
//
// 365


// Shorter version:

let finalTotal2 = marks
    .map { $0 + 10 }
    .filter { $0 > 70 }
    .reduce(0) { $0 + $1 }

print(finalTotal2)


// ============================================================
// MARK: - 15. sorted()
// ============================================================

// Closures can also be used with sorted().
//
// sorted() returns a new sorted collection.

let unsortedNumbers = [5, 2, 8, 1, 3]

let sortedNumbers = unsortedNumbers.sorted {
    $0 < $1
}

print(sortedNumbers)


// Output:
//
// [1, 2, 3, 5, 8]


// Descending order:

let descendingNumbers = unsortedNumbers.sorted {
    $0 > $1
}

print(descendingNumbers)


// Output:
//
// [8, 5, 3, 2, 1]


// ============================================================
// MARK: - 16. Closures as Variables
// ============================================================

// Closures can be stored in constants or variables.

let squareNumber: (Int) -> Int = {
    $0 * $0
}

print(squareNumber(6))


// Another example:

let divide: (Double, Double) -> Double = {
    $0 / $1
}

print(divide(20, 5))


// ============================================================
// MARK: - 17. Returning a Closure from a Function
// ============================================================

// A function can return a closure.

func makeGreeting() -> () -> Void {
    
    return {
        print("Hello from closure")
    }
}

let myGreeting = makeGreeting()

myGreeting()


// ============================================================
// MARK: - 18. Closure Capturing Values
// ============================================================

// Closures can capture values from their surrounding scope.
//
// This means a closure can remember a variable.

func makeCounter() -> () -> Int {
    
    var count = 0
    
    return {
        count += 1
        return count
    }
}

let counter = makeCounter()

print(counter())
print(counter())
print(counter())


// Output:
//
// 1
// 2
// 3


// The closure remembers the value of count.


// ============================================================
// MARK: - 19. Practical Example - Calculator
// ============================================================

func calculator(
    a: Int,
    b: Int,
    operation: (Int, Int) -> Int
) -> Int {
    
    return operation(a, b)
}


let additionResult = calculator(a: 10, b: 5) {
    $0 + $1
}

print(additionResult)


let subtractionResult = calculator(a: 10, b: 5) {
    $0 - $1
}

print(subtractionResult)


let multiplicationResult = calculator(a: 10, b: 5) {
    $0 * $1
}

print(multiplicationResult)


// ============================================================
// MARK: - 20. Practical Example - Students
// ============================================================

let studentMarks = [45, 67, 82, 91, 56, 78]


// Add 5 bonus marks

let bonusMarks = studentMarks.map {
    $0 + 5
}

print(bonusMarks)


// Find students who scored more than 70

let highMarks = bonusMarks.filter {
    $0 > 70
}

print(highMarks)


// Calculate total

let highMarksTotal = highMarks.reduce(0) {
    $0 + $1
}

print(highMarksTotal)


// ============================================================
// MARK: - 21. Closure vs Function
// ============================================================

// Function:

func addFunction(a: Int, b: Int) -> Int {
    return a + b
}

print(addFunction(a: 10, b: 20))


// Closure:

let addClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

print(addClosure(10, 20))


// ============================================================
// MARK: - 22. Where Closures Are Used
// ============================================================

// Closures are commonly used with:
//
// 1. map()
// 2. filter()
// 3. reduce()
// 4. sorted()
// 5. Completion handlers
// 6. Callbacks
// 7. Event handling
// 8. Asynchronous operations
// 9. Animations
// 10. Custom operations


// ============================================================
// MARK: - 23. Important Closure Concepts
// ============================================================

// Closure:
// An unnamed block of code.
//
// Parameters:
// Values passed into the closure.
//
// Return value:
// Value produced by the closure.
//
// in:
// Separates parameters/return type from closure body.
//
// Trailing closure:
// Closure written outside function parentheses
// when it is the final argument.
//
// $0:
// First closure parameter.
//
// $1:
// Second closure parameter.
//
// map():
// Transforms every element.
//
// filter():
// Keeps elements satisfying a condition.
//
// reduce():
// Combines all elements into one value.
//
// sorted():
// Sorts elements using a closure.
//
// Capturing:
// A closure can remember values from its surrounding scope.


// ============================================================
// MARK: - 24. Quick Revision
// ============================================================

// BASIC CLOSURE:
//
// let greeting = {
//     print("Hello")
// }
//
// greeting()


// CLOSURE WITH PARAMETERS:
//
// let greet = { (name: String) in
//     print("Hello \(name)")
// }
//
// greet("Aman")


// CLOSURE WITH RETURN:
//
// let add = { (a: Int, b: Int) -> Int in
//     return a + b
// }


// TRAILING CLOSURE:
//
// calculate(a: 5, b: 7) {
//     $0 + $1
// }


// SHORTHAND ARGUMENTS:
//
// $0 = first parameter
// $1 = second parameter


// MAP:
//
// numbers.map {
//     $0 * 2
// }


// FILTER:
//
// numbers.filter {
//     $0 > 5
// }


// REDUCE:
//
// numbers.reduce(0) {
//     $0 + $1
// }


// ============================================================
// MARK: - Final Summary
// ============================================================

// Closure = unnamed block of code
//
// Four basic types:
//
// 1. No parameter + No return
// 2. No parameter + Return
// 3. Parameter + No return
// 4. Parameter + Return
//
// Closures are:
// - First-class values
// - Storable in variables/constants
// - Passable to functions
// - Returnable from functions
// - Capable of capturing surrounding values
//
// Most important collection methods:
//
// map()
//     → Transform
//
// filter()
//     → Select
//
// reduce()
//     → Combine
//
// sorted()
//     → Sort
//
// These methods commonly use closures.
