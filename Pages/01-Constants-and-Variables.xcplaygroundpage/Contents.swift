// ============================================================
// CONSTANTS AND VARIABLES
// ============================================================


// MARK: - 1. Constants

// Constants are defined using the `let` keyword.
// Once assigned, their value cannot be changed.

let name = "Ash"
let pi = 3.14159

print(name)
print(pi)


// ❌ Cannot reassign a constant

// name = "Ben"
// pi = 3.14


// MARK: - 2. Variables

// Variables are defined using the `var` keyword.
// Their values can be changed after initialization.

var age = 23

age = 30

print(age)
// Output: 30


// MARK: - 3. Explicit Type Annotation

// Swift can automatically infer the type,
// but we can also explicitly specify it.

let firstVar: String = "Hello"

print(firstVar)


// ============================================================
// CONSTANT vs VARIABLE
// ============================================================


// MARK: - 4. Constant Used to Initialize Variables

let defaultScore = 100

var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)


// Variables can be changed

playerOneScore = 200

print(playerOneScore)
print(playerTwoScore)


// Output:
//
// 100
// 100
// 200
// 100
//
// Changing playerOneScore does NOT change playerTwoScore.


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 5. Quick Revision

// CONSTANT
//
// let name = "Ash"
//
// Cannot be changed after initialization.


// VARIABLE
//
// var age = 23
// age = 30
//
// Can be changed after initialization.


// TYPE ANNOTATION
//
// let name: String = "Ash"
//
// Explicitly tells Swift the type of the value.


// TYPE INFERENCE
//
// let name = "Ash"
//
// Swift automatically determines:
// name → String
