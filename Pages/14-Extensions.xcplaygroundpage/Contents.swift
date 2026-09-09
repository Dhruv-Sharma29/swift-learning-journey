// ============================================================
// MARK: - Extensions
// ============================================================

// DEFINITION:
//
// An extension allows you to add new functionality to an
// existing type without modifying its original definition.
//
// You can extend:
// - Structs
// - Classes
// - Enums
// - Protocols
// - Built-in Swift types such as String, Int, Double, etc.
//
// Extensions can add:
// - Computed properties
// - Methods
// - Initializers
// - Protocol conformance
// - Nested types
//
// IMPORTANT:
//
// Extensions CANNOT add stored properties.


// ============================================================
// MARK: - Why Use Extensions?
// ============================================================

// Extensions are useful for:
//
// 1. Organizing code
// 2. Adding functionality to an existing type
// 3. Adding protocol conformance
// 4. Extending Swift's built-in types
// 5. Keeping large types clean and readable


// ============================================================
// MARK: - Basic Extension
// ============================================================

struct Person {

    var name: String
}

extension Person {

    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

let person = Person(name: "John")

person.sayHello()


// ============================================================
// MARK: - Extension + Computed Property
// ============================================================

struct Rectangle {

    var width: Double
    var height: Double
}

extension Rectangle {

    var area: Double {
        width * height
    }
}

let rectangle = Rectangle(
    width: 10,
    height: 5
)

print("Rectangle area: \(rectangle.area)")


// ============================================================
// MARK: - Extension + CustomStringConvertible
// ============================================================

// CustomStringConvertible is a built-in Swift protocol.
//
// It allows us to decide what should be printed when an
// instance is passed to print().
//
// It requires:
//
// var description: String { get }

struct Book {

    var title: String
    var pages: Int
}

extension Book: CustomStringConvertible {

    var description: String {
        "\(title) - \(pages) pages"
    }
}

let book = Book(
    title: "Swift Programming",
    pages: 300
)

print(book)


// ============================================================
// MARK: - Extending Double
// ============================================================

// We can add our own computed properties to Double.
//
// `self` means the current Double value.
//
// Example:
//
// 5.5.km
//
// Inside the `km` property:
//
// self = 5.5

extension Double {

    // Convert kilometers to meters
    var km: Double {
        self * 1_000
    }

    // Value is already in meters
    var m: Double {
        self
    }

    // Convert meters to centimeters
    var cm: Double {
        self * 100
    }
}

let distanceInMeters = 5.5.km

print("Distance in meters: \(distanceInMeters)")

let meters = 5.5.m

print("Meters: \(meters)")

let centimeters = 5.5.cm

print("Centimeters: \(centimeters)")


// ============================================================
// MARK: - What Is self?
// ============================================================

// `self` refers to the current instance/value.
//
// Example:
//
// 5.5.km
//
// self = 5.5
//
// Therefore:
//
// self * 1_000
//
// becomes:
//
// 5.5 * 1_000
//
// = 5500


// ============================================================
// MARK: - Extending String
// ============================================================

// We can add our own methods to String.

extension String {

    func isValidEmail() -> Bool {

        return contains("@") &&
               contains(".")
    }
}

print("test@example.com".isValidEmail())

print("hello".isValidEmail())


// ============================================================
// MARK: - Understanding -> Bool
// ============================================================

// `->` tells us what type a function returns.
//
// `-> Bool` means the function returns:
// - true
// - false
//
// Example:
//
// func isValidEmail() -> Bool
//
// The result can be stored in a Bool variable.

let emailIsValid: Bool = "test@example.com".isValidEmail()

print("Is email valid? \(emailIsValid)")


// ============================================================
// MARK: - Extension Can Access Existing Properties
// ============================================================

struct User {

    var firstName: String
    var lastName: String
}

extension User {

    var fullName: String {
        firstName + " " + lastName
    }
}

let user = User(
    firstName: "John",
    lastName: "Snow"
)

print(user.fullName)


// ============================================================
// MARK: - Extension Cannot Add Stored Properties
// ============================================================

// ❌ NOT ALLOWED:
//
// extension User {
//
//     var age: Int = 20
//
// }
//
// The reason:
//
// `age` is a stored property.
//
// Extensions cannot add stored properties.


// ============================================================
// MARK: - Extensions Can Add Computed Properties
// ============================================================

extension User {

    var nameLength: Int {
        name.count
    }
}

print("Name length: \(user.nameLength)")


// ============================================================
// MARK: - Stored vs Computed Properties
// ============================================================

// Stored property:
//
// var age: Int = 20
//
// The value is actually stored.
//
// Computed property:
//
// var nameLength: Int {
//     name.count
// }
//
// The value is calculated when accessed.


// ============================================================
// MARK: - Extension with a Class
// ============================================================

class Animal {

    var name: String

    init(name: String) {
        self.name = name
    }
}

extension Animal {

    func speak() {
        print("\(name) makes a sound.")
    }
}

let animal = Animal(name: "Lion")

animal.speak()


// ============================================================
// MARK: - Extension with an Enum
// ============================================================

enum Direction {

    case north
    case south
    case east
    case west
}

extension Direction {

    var description: String {

        switch self {

        case .north:
            "Going North"

        case .south:
            "Going South"

        case .east:
            "Going East"

        case .west:
            "Going West"
        }
    }
}

let direction = Direction.north

print(direction.description)


// ============================================================
// MARK: - Extension + Protocol
// ============================================================

// A protocol defines requirements.
//
// An extension can be used to make a type conform to
// that protocol separately from its original definition.

protocol Greetable {

    var name: String { get }

    func greet() -> String
}

struct Robot {

    let name: String
}

extension Robot: Greetable {

    func greet() -> String {
        "Beep boop! I'm \(name)"
    }
}

let robot = Robot(name: "R2D2")

print(robot.greet())


// ============================================================
// MARK: - Protocol Extension
// ============================================================

// A protocol extension can provide a DEFAULT implementation.
//
// Any type conforming to the protocol can use this
// implementation unless it provides its own version.

protocol Friendly {

    var name: String { get }

    func greet()
}

extension Friendly {

    func greet() {
        print("Hello, \(name)!")
    }
}

struct Student: Friendly {

    let name: String
}

let student = Student(name: "Alex")

student.greet()


// ============================================================
// MARK: - Custom Implementation
// ============================================================

// A type can provide its own implementation instead of
// using the default implementation from the protocol extension.

struct Dog: Friendly {

    let name: String

    func greet() {
        print("Woof! I'm \(name)!")
    }
}

let dog = Dog(name: "Rex")

dog.greet()


// ============================================================
// MARK: - Extension with Initializer
// ============================================================

struct FullName {

    var firstName: String
    var lastName: String
}

extension FullName {

    init(fullName: String) {

        let parts = fullName.split(separator: " ")

        self.firstName = String(parts[0])
        self.lastName = String(parts[1])
    }
}

let fullName = FullName(fullName: "John Snow")

print(fullName.firstName)
print(fullName.lastName)


// ============================================================
// MARK: - Extending Int
// ============================================================

extension Int {

    var squared: Int {
        self * self
    }

    var isEven: Bool {
        self % 2 == 0
    }
}

print("5 squared: \(5.squared)")

print("Is 10 even? \(10.isEven)")

print("Is 7 even? \(7.isEven)")


// ============================================================
// MARK: - Organizing a Type with Extensions
// ============================================================

// Extensions are very useful for separating functionality
// into different sections.

struct Employee {

    var name: String
    var age: Int
}


// ------------------------------------------------------------
// MARK: Employee - Greeting
// ------------------------------------------------------------

extension Employee {

    func sayHello() {
        print("Hello, I'm \(name)")
    }
}


// ------------------------------------------------------------
// MARK: Employee - Birthday
// ------------------------------------------------------------

extension Employee {

    func celebrateBirthday() {
        print("Happy Birthday, \(name)!")
    }
}


// ------------------------------------------------------------
// MARK: Employee - Information
// ------------------------------------------------------------

extension Employee {

    var information: String {
        "\(name) is \(age) years old."
    }
}

let employee = Employee(
    name: "Dhruv",
    age: 20
)

employee.sayHello()

employee.celebrateBirthday()

print(employee.information)


// ============================================================
// MARK: - Extension vs Protocol
// ============================================================

// PROTOCOL:
//
// Defines WHAT a type must provide.
//
// Example:
//
// protocol Greetable {
//     var name: String { get }
//     func greet()
// }
//
// It is a CONTRACT / REQUIREMENT.
//
//
//
// EXTENSION:
//
// Adds functionality to an existing type.
//
// Example:
//
// extension Person {
//     func sayHello() {
//         print("Hello")
//     }
// }
//
// It adds IMPLEMENTATION / FUNCTIONALITY.


// ============================================================
// MARK: - Important Rules
// ============================================================

// 1. Extensions add functionality to an existing type.
//
// 2. Extensions do not create a new type.
//
// 3. Extensions can add computed properties.
//
// 4. Extensions can add methods.
//
// 5. Extensions can add initializers.
//
// 6. Extensions can add protocol conformance.
//
// 7. Extensions cannot add stored properties.
//
// 8. Extensions can extend built-in Swift types.
//
// 9. Protocol extensions can provide default implementations.
//
// 10. Extensions are commonly used to organize large types.


// ============================================================
// MARK: - Quick Revision
// ============================================================

// extension
// → Adds functionality to an existing type.
//
// self
// → Refers to the current instance/value.
//
// computed property
// → Calculates its value when accessed.
//
// get
// → Property must be readable.
//
// get set
// → Property must be readable and writable.
//
// -> Bool
// → Function returns a Bool.
//
// CustomStringConvertible
// → Lets you define how an instance is represented as text.
//
// protocol
// → Defines requirements / a contract.
//
// protocol extension
// → Can provide default implementations.


// ============================================================
// MARK: - Final Definition
// ============================================================

// An extension allows you to add new functionality,
// such as methods, computed properties, initializers,
// and protocol conformance, to an existing type without
// modifying its original definition.
//
// The most important limitation:
//
// Extensions CANNOT add stored properties.
