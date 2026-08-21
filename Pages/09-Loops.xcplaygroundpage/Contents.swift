// ============================================================
// LOOPS
// ============================================================

// Loops are used to repeat a block of code.
//
// Swift mainly provides:
//
// 1. for-in loop
// 2. while loop
// 3. repeat-while loop


// ============================================================
// FOR-IN LOOP
// ============================================================


// MARK: - 1. Basic for-in Loop

for number in 1...5 {
    print(number)
}


// Output:
//
// 1
// 2
// 3
// 4
// 5


// ============================================================
// IGNORING THE LOOP VARIABLE
// ============================================================


// MARK: - 2. Using _

// Use `_` when you want to repeat something
// but do not need the loop variable.

for _ in 1...5 {
    print("Hello World!")
}


// Output:
//
// Hello World!
// Hello World!
// Hello World!
// Hello World!
// Hello World!


// ============================================================
// LOOPING THROUGH AN ARRAY
// ============================================================


// MARK: - 3. for-in with Array

let fruits = ["Apple", "Banana", "Orange"]

for fruit in fruits {
    print(fruit)
}


// Output:
//
// Apple
// Banana
// Orange


// ============================================================
// ENUMERATED()
// ============================================================


// MARK: - 4. Getting Index and Value

let students = ["ABC", "XYZ", "MNC"]

for (index, student) in students.enumerated() {
    print("\(index + 1). \(student)")
}


// Output:
//
// 1. ABC
// 2. XYZ
// 3. MNC


// enumerated() gives:
//
// (index, value)


// ============================================================
// EVEN AND ODD NUMBERS
// ============================================================


// MARK: - 5. Check Even or Odd

for i in 1...10 {
    
    if i % 2 == 0 {
        print("\(i) is even")
    } else {
        print("\(i) is odd")
    }
}


// % → Remainder operator
//
// i % 2 == 0
// → Even number
//
// i % 2 != 0
// → Odd number


// ============================================================
// CONTINUE
// ============================================================


// MARK: - 6. continue

// `continue` skips the CURRENT iteration
// and moves to the next iteration.

for number in 1...10 {
    
    // Skip even numbers
    if number % 2 == 0 {
        continue
    }
    
    print(number)
}


// Output:
//
// 1
// 3
// 5
// 7
// 9


// How it works:
//
// number = 2
//      ↓
// number is even
//      ↓
// continue
//      ↓
// Skip print(number)
//      ↓
// Move to next iteration


// ============================================================
// BREAK
// ============================================================


// MARK: - 7. break

// `break` immediately exits the loop.

let targetNumber = 7

for number in 1...10 {
    
    if number == targetNumber {
        print("Target found: \(number)")
        break
    }
    
    print("Checking \(number)...")
}


// Output:
//
// Checking 1...
// Checking 2...
// Checking 3...
// Checking 4...
// Checking 5...
// Checking 6...
// Target found: 7


// After break:
// The loop completely stops.


// ============================================================
// BREAK EXAMPLE: FINDING A DIVISOR
// ============================================================


// MARK: - 8. Finding First Divisor

let numberToCheck = 7

for i in 2..<numberToCheck {
    
    if numberToCheck % i == 0 {
        print("\(numberToCheck) is divisible by \(i)")
        break
    }
}


// For number = 7:
//
// 7 has no divisors between 2 and 6,
// so the loop completes.
//
// This concept can be useful later
// when checking prime numbers.


// ============================================================
// LOOPING THROUGH A STRING
// ============================================================


// MARK: - 9. String with enumerated()

for (index, letter) in "Swift".enumerated() {
    print("\(index). \(letter)")
}


// Output:
//
// 0. S
// 1. w
// 2. i
// 3. f
// 4. t


// ============================================================
// WHILE LOOP
// ============================================================


// MARK: - 10. Basic while Loop

var num = 7

while num > 0 {
    
    if num == 5 {
        print("Found 5")
        break
    }
    
    print(num)
    
    num -= 1
}


// Output:
//
// 7
// 6
// Found 5


// A while loop continues as long as
// its condition is true.


// Syntax:
//
// while condition {
//     // code
// }


// ============================================================
// WHILE LOOP WITH BOOLEAN
// ============================================================


// MARK: - 11. Game Lives Example

var numberOfLives = 3
var stillAlive = true

while stillAlive {
    
    print("Still going...")
    print("Got hit! Lives remaining: \(numberOfLives)")
    
    numberOfLives -= 1
    
    if numberOfLives == 0 {
        print("Game Over!")
        stillAlive = false
    }
}


// Output:
//
// Still going...
// Got hit! Lives remaining: 3
//
// Still going...
// Got hit! Lives remaining: 2
//
// Still going...
// Got hit! Lives remaining: 1
//
// Game Over!


// ============================================================
// REPEAT-WHILE LOOP
// ============================================================


// MARK: - 12. repeat-while Loop

var count = 1

repeat {
    
    print(count)
    count += 1
    
} while count <= 5


// Output:
//
// 1
// 2
// 3
// 4
// 5


// ============================================================
// WHILE vs REPEAT-WHILE
// ============================================================


// MARK: - 13. Important Difference


// while:
//
// Checks condition FIRST
//      ↓
// Executes code only if condition is true


// repeat-while:
//
// Executes code FIRST
//      ↓
// Checks condition afterward


var number = 10

while number < 5 {
    print("This will not run")
}


// number = 10
// 10 < 5 → false
//
// Therefore, while body does not execute.


repeat {
    print("This runs once")
} while number < 5


// Output:
//
// This runs once


// Even though:
//
// number < 5
//
// is false, repeat executes at least ONCE.


// ============================================================
// QUESTION: TWO PARALLEL ARRAYS
// ============================================================


// MARK: - 14. Names and Attendance

let names = ["A", "B", "C"]

let isPresent = [true, false, true]


for (index, name) in names.enumerated() {
    
    if isPresent[index] {
        print("\(index + 1). \(name)")
    }
}


// Output:
//
// 1. A
// 3. C


// ============================================================
// LOOP WITH ALL STUDENTS
// ============================================================


// MARK: - 15. Show Present and Absent Students

for (index, name) in names.enumerated() {
    
    if isPresent[index] {
        print("\(index + 1). \(name) - Present")
    } else {
        print("\(index + 1). \(name) - Absent")
    }
}


// Output:
//
// 1. A - Present
// 2. B - Absent
// 3. C - Present
