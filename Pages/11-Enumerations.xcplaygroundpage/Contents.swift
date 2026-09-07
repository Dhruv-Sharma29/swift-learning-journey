// ============================================================
// ENUMERATIONS (ENUMS)
// ============================================================


// MARK: - 1. What is an Enum?

// An enumeration (enum) defines a group of related values.
//
// Use an enum when a variable should have
// one value from a predefined set of choices.
//
// Examples:
//
// Compass direction → north, east, south, west
// Day → monday, tuesday, wednesday...
// Traffic light → red, yellow, green
// Game state → playing, paused, gameOver


// ============================================================
// DEFINING AN ENUM
// ============================================================


// MARK: - 2. Basic Enum

enum CompassPoint {
    case north
    case east
    case south
    case west
}


// You can also write multiple cases on one line:

enum CompassDirection {
    case north, east, south, west
}


// `case` defines the possible values of the enum.


// ============================================================
// CREATING AN ENUM VALUE
// ============================================================


// MARK: - 3. Creating an Instance

var compassHeading = CompassPoint.north

print(compassHeading)


// Once Swift knows the type, you can use `.caseName`:

compassHeading = .west

print(compassHeading)


// Both are valid:
//
// CompassPoint.north
// .north
//
// The shorter `.north` syntax works because Swift
// already knows the expected type.


// ============================================================
// SWITCH WITH ENUM
// ============================================================


// MARK: - 4. Using Enum with switch

switch compassHeading {
    
case .north:
    print("I am heading north")
    
case .east:
    print("I am heading east")
    
case .south:
    print("I am heading south")
    
case .west:
    print("I am heading west")
}


// Since compassHeading is a CompassPoint,
// Swift knows all possible cases.
//
// A switch over an enum should handle every case
// unless you intentionally use `default`.
//
// This gives you compiler help if you later add
// another case to the enum.


// ============================================================
// ENUM WITH ASSOCIATED VALUES
// ============================================================


// MARK: - 5. Associated Values

// An enum case can store additional information.

enum NetworkResult {
    case success(String)
    case failure(Int)
}


let result = NetworkResult.success("Data loaded")


switch result {
    
case .success(let message):
    print("Success: \(message)")
    
case .failure(let errorCode):
    print("Error code: \(errorCode)")
}


// Here:
//
// .success("Data loaded")
//             ↑
//        associated value
//
// .failure(404)
//          ↑
//     associated value


// ============================================================
// ENUM WITH DIFFERENT ASSOCIATED VALUE TYPES
// ============================================================


// MARK: - 6. Different Data Types

enum PaymentStatus {
    case pending
    case completed(transactionID: String)
    case failed(reason: String)
}


let payment = PaymentStatus.completed(
    transactionID: "TX123"
)


switch payment {
    
case .pending:
    print("Payment is pending")
    
case .completed(let transactionID):
    print("Transaction: \(transactionID)")
    
case .failed(let reason):
    print("Payment failed: \(reason)")
}


// ============================================================
// RAW VALUES
// ============================================================


// MARK: - 7. Raw Values

// Enums can have a predefined raw value.
//
// Common raw value types:
// String
// Int


enum CompassPointRaw: String {
    case north = "North"
    case east = "East"
    case south = "South"
    case west = "West"
}


let direction = CompassPointRaw.north

print(direction.rawValue)

// Output:
// North


// `rawValue` gets the value assigned to the case.


// ============================================================
// ENUM WITH INT RAW VALUES
// ============================================================


// MARK: - 8. Integer Raw Values

enum Weekday: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
}


let day = Weekday.wednesday

print(day.rawValue)

// Output:
// 3


// Swift automatically increments the following values:
//
// monday    → 1
// tuesday   → 2
// wednesday → 3
// thursday  → 4
// friday    → 5


// ============================================================
// ENUM WITH RAW VALUE INITIALIZER
// ============================================================


// MARK: - 9. Creating Enum from Raw Value

let dayNumber = Weekday(rawValue: 3)

print(dayNumber)


// Result:
// Optional(Weekday.wednesday)


// Why Optional?
//
// Because the raw value might not correspond
// to any enum case.


// Example:

let invalidDay = Weekday(rawValue: 10)

print(invalidDay)

// nil


// This connects directly to the Optional concept
// you learned earlier.


// ============================================================
// ENUM METHODS
// ============================================================


// MARK: - 10. Methods inside Enum

enum TrafficLight {
    case red
    case yellow
    case green
    
    func message() {
        
        switch self {
            
        case .red:
            print("Stop")
            
        case .yellow:
            print("Get ready")
            
        case .green:
            print("Go")
        }
    }
}


let light = TrafficLight.green

light.message()

// Output:
// Go


// `self` refers to the current enum case.
//
// light.message()
//       ↓
// self = .green


// ============================================================
// MUTATING ENUM METHOD
// ============================================================


// MARK: - 11. Changing the Enum's Current Case

enum GameState {
    case menu
    case playing
    case paused
    case gameOver
    
    mutating func startGame() {
        self = .playing
    }
}


var gameState = GameState.menu

print(gameState)

gameState.startGame()

print(gameState)

// Output:
//
// menu
// playing


// `mutating` is required because the method
// changes the enum's current value.


// ============================================================
// ENUM vs STRUCT vs CLASS
// ============================================================


// MARK: - 12. Quick Comparison


// STRUCT
//
// Used to group related data and behavior.
//
// struct Person {
//     var name: String
// }


// CLASS
//
// Used for reference types,
// inheritance and shared identity.
//
// class Person {
//     var name: String
// }


// ENUM
//
// Used when a value should be one
// of a predefined set of possibilities.
//
// enum Direction {
//     case north
//     case south
// }


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 13. Enum Cheat Sheet


enum Direction {
    case north
    case east
    case south
    case west
}


// Create:

var directionValue = Direction.north


// Shorthand:

directionValue = .east


// Switch:

switch directionValue {
case .north:
    print("North")
case .east:
    print("East")
case .south:
    print("South")
case .west:
    print("West")
}


// Raw value:

enum Status: String {
    case success = "Success"
    case failure = "Failure"
}

print(Status.success.rawValue)


// Associated value:

enum Result {
    case success(String)
    case failure(String)
}
