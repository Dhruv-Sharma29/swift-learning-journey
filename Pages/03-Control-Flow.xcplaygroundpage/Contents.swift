// ============================================================
// CONTROL FLOW
// ============================================================


// MARK: - 1. If Statement

// The if statement executes code only when
// a condition is true.

let temperature = 100

if temperature >= 100 {
    print("The water is boiling")
}


// Example

let currentSpeed = 70
let limitSpeed = 65

if currentSpeed > limitSpeed {
    print("Speeding")
}


// ============================================================
// IF - ELSE IF - ELSE
// ============================================================


// MARK: - 2. If, Else If and Else

// if       → checks the first condition
// else if  → checks another condition if the first is false
// else     → executes when all conditions are false

let outsideTemp = 70

if outsideTemp >= 65 && outsideTemp <= 75 {
    print("It's good outside")
}
else if outsideTemp < 65 {
    print("It's cold 🥶")
}
else {
    print("It's hot 🔥")
}


// ============================================================
// LOGICAL OPERATORS
// ============================================================


// MARK: - 3. AND Operator (&&)

// && means BOTH conditions must be true.

let temperature2 = 70

if temperature2 >= 65 && temperature2 <= 75 {
    print("Temperature is comfortable")
}


// Example:
// true  && true  → true
// true  && false → false
// false && true  → false
// false && false → false


// MARK: - 4. OR Operator (||)

// || means AT LEAST ONE condition must be true.

var isPluggedIn = false
var hasBatteryPower = true

if isPluggedIn || hasBatteryPower {
    print("You can use your laptop")
}
else {
    print("😱")
}


// Example:
// true  || true  → true
// true  || false → true
// false || true  → true
// false || false → false


// MARK: - 5. NOT Operator (!)

// ! reverses a Boolean value.

let isRaining = false

if !isRaining {
    print("You don't need an umbrella")
}


// ============================================================
// SWITCH STATEMENT
// ============================================================


// MARK: - 6. Basic Switch

// switch is useful when checking one value
// against multiple possible cases.

let numberOfWheels = 2

switch numberOfWheels {
case 0:
    print("Missing something!")
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels")
}


// Important:
// Swift switch statements must be exhaustive.
// If every possible value isn't covered,
// use default.


// ============================================================
// SWITCH WITH MULTIPLE VALUES
// ============================================================


// MARK: - 7. Multiple Conditions in One Case

// Multiple values can be separated by commas.

let character = "z"

switch character {
case "a", "e", "i", "o", "u":
    print("The character is a vowel")
default:
    print("The character is a consonant")
}


// Example:
//
// case "a", "e", "i", "o", "u":
//        ↑
// Multiple values → same code


// ============================================================
// SWITCH WITH RANGES
// ============================================================


// MARK: - 8. Switch with Ranges

let distance = 10

switch distance {
case 0...9:
    print("Your destination is close.")

case 10...99:
    print("Your destination is a medium distance from here.")

case 100...999:
    print("Your destination is far from here.")

default:
    print("Are you sure you want to travel this far?")
}


// 0...9
// Includes 0 and 9
//
// 10...99
// Includes 10 and 99
//
// 100...999
// Includes 100 and 999


// MARK: - 9. Half-Open Range

// ..< excludes the upper value.

let number = 10

switch number {
case 0..<10:
    print("Less than 10")

case 10..<20:
    print("Between 10 and 19")

default:
    print("20 or more")
}


// 0..<10 means:
//
// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
//
// 10 is NOT included.


// ============================================================
// SWITCH CHALLENGE
// ============================================================


// MARK: - 10. Switch with Int.min

let temp = 60

switch temp {
case Int.min..<65:
    print("It's too cold.")

case 65...75:
    print("The temperature is just right.")

default:
    print("It's too hot.")
}


// Int.min
// ↓
// Smallest possible Int value
//
// Int.max
// ↓
// Largest possible Int value


// ============================================================
// TERNARY OPERATOR
// ============================================================


// MARK: - 11. Ternary Operator

// Ternary operator is a short way of writing
// a simple if-else statement.
//
// Syntax:
//
// condition ? valueIfTrue : valueIfFalse

let a = 15
let b = 4

let largest = a > b ? a : b

print(largest)


// Same logic using if-else:
//
// if a > b {
//     largest = a
// }
// else {
//     largest = b
// }


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 12. Quick Revision

// IF
//
// if condition {
//     // code
// }


// IF - ELSE
//
// if condition {
//     // code
// }
// else {
//     // code
// }


// IF - ELSE IF - ELSE
//
// if condition1 {
//     // code
// }
// else if condition2 {
//     // code
// }
// else {
//     // code
// }


// AND
// && → both conditions must be true


// OR
// || → at least one condition must be true


// NOT
// ! → reverses Boolean value


// SWITCH
//
// switch value {
// case value1:
//     // code
// case value2:
//     // code
// default:
//     // code
// }


// RANGE
//
// 1...5 → 1, 2, 3, 4, 5
// 1..<5 → 1, 2, 3, 4


// TERNARY
//
// condition ? trueValue : falseValue
