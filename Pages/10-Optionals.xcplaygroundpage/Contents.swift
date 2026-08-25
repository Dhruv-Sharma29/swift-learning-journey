// ============================================================
// OPTIONALS
// ============================================================


// MARK: - 1. What is an Optional?

// An Optional is a variable that can contain:
//
// 1. A value
// OR
// 2. nil (no value)


// Normal variable:

var normalName: String = "John"

// normalName = nil   // ❌ Error


// Optional variable:

var name: String? = nil


// The `?` means:
//
// This variable can contain a String
// OR
// nil


// String  → must always contain a String
//
// String? → can contain a String or nil


// Example:

var username: String? = "Ash"

username = nil

username = "Richard"


// ============================================================
// WHY DO WE NEED OPTIONALS?
// ============================================================


// MARK: - 2. The Problem

// Sometimes a value may not exist yet.
//
// Example:
//
// - A user may not have entered their name.
// - A dictionary key may not exist.
// - An API may return missing data.
// - A search may not find a result.
//
// Swift needs a way to represent:
//
// "There is no value."
//
// This is done using nil.


// Example:

var middleName: String? = nil


// ============================================================
// PRINTING OPTIONALS
// ============================================================


// MARK: - 3. Printing an Optional Directly

var name: String? = nil

print(name)


// Xcode may show a warning similar to:
//
// Expression implicitly coerced from 'String?' to 'Any'
//
// Why?
//
// print() expects a value that can be printed.
// But name has type:
//
// String?
//
// This means:
//
// String OR nil
//
// Swift warns because you are passing an Optional directly.


// If name contains a value:

name = "Ash"

print(name)


// Output:
//
// Optional("Ash")
//
// It prints Optional("Ash") instead of just:
//
// Ash


// ============================================================
// DIFFERENT WAYS TO HANDLE OPTIONALS
// ============================================================


// MARK: - 4. Print as Any

print(name as Any)


// `as Any` tells Swift:
//
// Treat this Optional as Any so it can be printed.
//
// This removes the warning, but DOES NOT unwrap the Optional.
//
// Output:
//
// Optional("Ash")


// Therefore:
//
// `as Any` is mainly useful for debugging.


// ============================================================
// OPTIONAL BINDING
// ============================================================


// MARK: - 5. if let

var optionalName: String? = nil


if let unwrappedName = optionalName {
    
    print(unwrappedName)
    
} else {
    
    print("This dude doesn't exist")
}


// If optionalName contains:
//
// "Ash"
//
// then:
//
// unwrappedName = "Ash"
//
// and its type is now:
//
// String
//
// NOT:
//
// String?


// Example:

optionalName = "Ash"

if let unwrappedName = optionalName {
    print("Hello, \(unwrappedName)")
}


// A shorter version:
//
// if let name = name {
//     print(name)
// }
//
// The first `name` is the new unwrapped value.
// The second `name` is the original Optional.


// ============================================================
// GUARD LET
// ============================================================


// MARK: - 6. guard let

func greet(name: String?) {
    
    guard let name = name else {
        print("This dude doesn't exist")
        return
    }
    
    // After guard succeeds,
    // name is a normal String.
    
    print("Hello, \(name)")
}


greet(name: "Ash")


// IMPORTANT:
//
// guard is used for an EARLY EXIT.
//
// If the Optional is nil:
//
// guard fails
//      ↓
// else block runs
//      ↓
// function exits using return
//
// If the Optional has a value:
//
// guard succeeds
//      ↓
// execution continues
//      ↓
// unwrapped value can be used


// ============================================================
// if let vs guard let
// ============================================================


// if let:
//
// Use when you only need the unwrapped value
// inside the if block.


if let name = optionalName {
    print(name)
}


// guard let:
//
// Use when the value is required
// for the rest of the function.


func printName(_ name: String?) {
    
    guard let name = name else {
        return
    }
    
    print(name)
}


// ============================================================
// NIL-COALESCING OPERATOR
// ============================================================


// MARK: - 7. ??

var userName: String? = nil

let displayName = userName ?? "Anonymous"

print(displayName)


// Output:
//
// Anonymous


// If userName contains:

userName = "Richard"

let displayName2 = userName ?? "Anonymous"

print(displayName2)


// Output:
//
// Richard


// `??` means:
//
// Use the Optional's value if it exists.
//
// Otherwise, use a default value.


// Syntax:
//
// optionalValue ?? defaultValue


// Example:
//
// userName = nil
//
// userName ?? "Anonymous"
//       ↓
// "Anonymous"


// ============================================================
// FORCE UNWRAPPING
// ============================================================


// MARK: - 8. !

let number: Int? = 100

let myNumber: Int = number!

print(myNumber)


// `!` forcefully extracts the value from an Optional.
//
// number: Int?
//        ↓
// number!
//        ↓
// Int


// ⚠️ Danger:
//
// If number is nil:

let anotherNumber: Int? = nil

// let value = anotherNumber!
//
// This will crash the application.


// Therefore:
//
// Prefer:
// - if let
// - guard let
// - ??
//
// Use ! only when you are absolutely certain
// the Optional contains a value.


// ============================================================
// OPTIONAL CHAINING
// ============================================================


// MARK: - 9. Optional Chaining

struct Person {
    var age: Int
}


var person: Person? = Person(age: 20)


// person is Optional:
//
// Person?


// To safely access age:

print(person?.age)


// Result:
//
// Optional(20)


// If person is nil:

person = nil

print(person?.age)


// Result:
//
// nil


// Optional chaining:
//
// person?.age
//
// means:
//
// "If person has a value, access age.
// Otherwise, return nil."


// ============================================================
// OPTIONAL CHAINING WITH METHODS
// ============================================================


struct Student {
    var name: String
    
    func introduce() {
        print("Hello, I am \(name)")
    }
}


var student: Student? = Student(name: "Ash")

student?.introduce()


// If student is nil:
//
// student?.introduce()
//
// Nothing happens.
//
// The program does NOT crash.


student = nil

student?.introduce()


// ============================================================
// OPTIONAL CHAINING WITH MULTIPLE LEVELS
// ============================================================


struct Address {
    var city: String
}


struct User {
    var name: String
    var address: Address?
}


var user: User? = User(
    name: "Ash",
    address: Address(city: "Delhi")
)


print(user?.address?.city)


// Each `?` safely checks the value.
//
// user?
//    ↓
// address?
//    ↓
// city


// If any value is nil,
// the complete expression returns nil.


// ============================================================
// OPTIONAL TYPE SUMMARY
// ============================================================


// MARK: - 10. Optional Syntax


// Normal value:
//
// String
// Int
// Double
// Bool


// Optional value:
//
// String?
// Int?
// Double?
// Bool?


var age: Int? = nil

var price: Double? = 100.5

var isLoggedIn: Bool? = true


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 11. Different Ways to Handle Optionals


var optionalValue: String? = "Hello"


// 1. Optional Binding

if let value = optionalValue {
    print(value)
}


// 2. guard let

func example(value: String?) {
    
    guard let value = value else {
        return
    }
    
    print(value)
}


// 3. Nil-Coalescing

let value1 = optionalValue ?? "Default"

print(value1)


// 4. Force Unwrapping

let value2 = optionalValue!

print(value2)


// 5. Optional Chaining

struct Example {
    var value: String
}

var object: Example? = Example(value: "Hello")

print(object?.value as Any)
