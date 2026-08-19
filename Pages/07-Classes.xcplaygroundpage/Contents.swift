// ============================================================
// CLASSES
// ============================================================


// MARK: - 1. What is a Class?

// A class is a blueprint for creating objects (instances).
//
// A class can contain:
// - Properties → store data
// - Methods → perform actions
// - Initializers → initialize properties
//
// Classes are mainly useful when we need:
// - Reference semantics
// - Inheritance
// - Shared mutable state


// MARK: - 2. Basic Class

class Dog {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func bark() {
        print("Woof!")
    }
}


// Creating an instance

var dog = Dog(name: "Rex", age: 3)

dog.bark()

print("Dog Name: \(dog.name)")
print("Dog Age: \(dog.age)")


// ============================================================
// DEFAULT PROPERTY VALUES
// ============================================================


// MARK: - 3. Class Without an Initializer

// If all stored properties already have default values,
// Swift does not require us to create an initializer.

class Dog1 {
    var name: String = "Unknown"
    var age: Int = 0
}

let dog1 = Dog1()

print(dog1.name)
print(dog1.age)


// Why no init()?
//
// name already has → "Unknown"
// age already has  → 0
//
// Therefore, Swift can initialize the object automatically.


// ============================================================
// VALUE TYPE vs REFERENCE TYPE
// ============================================================


// MARK: - 4. Struct vs Class

// STRUCT
// → Value type
// → Copying creates an independent value


// CLASS
// → Reference type
// → Copying creates another reference to the same instance


// Example with a Class

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


var person1 = Person(name: "Aman")

print(person1.name)
// Aman


var person2 = person1

person2.name = "Akshay"

print(person1.name)
print(person2.name)


// Output:
//
// Akshay
// Akshay
//
// Why?
//
// person1 ─────┐
//              ↓
//           Person Object
//              ↑
// person2 ─────┘
//
// Both variables refer to the SAME object.


// ============================================================
// INHERITANCE
// ============================================================


// MARK: - 5. What is Inheritance?

// Inheritance allows one class to inherit
// properties and methods from another class.
//
// Parent / Superclass
//        ↓
//      Vehicle
//        ↓
// Child / Subclass
//        ↓
//      Bicycle


// MARK: - Parent Class

class Vehicle {
    
    // Stored property
    var currentSpeed: Double = 0.0
    
    
    // Computed property
    var description: String {
        "\(currentSpeed) miles per hour"
    }
    
    
    // Method
    func makeNoise() {
        print("Noises")
    }
}


// MARK: - Child Class

class Bicycle: Vehicle {
    var hasBasket: Bool = false
}


// Bicycle automatically inherits:
// - currentSpeed
// - description
// - makeNoise()


let bicycle = Bicycle()

bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print("Bicycle: \(bicycle.description)")


// Output:
//
// Bicycle: 15.0 miles per hour


// ============================================================
// MULTI-LEVEL INHERITANCE
// ============================================================


// MARK: - 6. Inheritance Chain

// Vehicle
//    ↓
// Bicycle
//    ↓
// Tandem

class Tandem: Bicycle {
    var numOfPassenger: Int = 0
}


var newTandem = Tandem()

newTandem.numOfPassenger = 2
newTandem.hasBasket = true
newTandem.currentSpeed = 5.0

print("""
Number of passengers: \(newTandem.numOfPassenger)
Has basket: \(newTandem.hasBasket)
Speed: \(newTandem.description)
""")


// Tandem has access to:
//
// Its own property:
// numOfPassenger
//
// Bicycle's property:
// hasBasket
//
// Vehicle's property:
// currentSpeed
//
// Vehicle's computed property:
// description
//
// Vehicle's method:
// makeNoise()


// ============================================================
// OVERRIDING
// ============================================================


// MARK: - 7. Method Overriding

// A child class can provide its own implementation
// of a method inherited from its parent.
//
// Use `override`.

class Train: Vehicle {
    
    override func makeNoise() {
        print("Choo Choo")
    }
}


var thomas = Train()

thomas.currentSpeed = 80

thomas.makeNoise()

// Output:
// Choo Choo


// ============================================================
// OVERRIDING A COMPUTED PROPERTY
// ============================================================


// MARK: - 8. Property Overriding

class Car: Vehicle {
    
    var gear = 1
    
    override var description: String {
        "\(super.description) in \(gear) gear"
    }
}


var chevy = Car()

chevy.gear = 3
chevy.currentSpeed = 60

print(chevy.description)

// Output:
// 60.0 miles per hour in 3 gear


// MARK: - super

// `super` refers to the parent class.
//
// super.description
// ↓
// Gets the description from Vehicle.
//
// Then Car adds:
// "in \(gear) gear"


// ============================================================
// INITIALIZERS + INHERITANCE
// ============================================================


// MARK: - 9. Parent Class Initializer

class Person0 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


// MARK: - 10. Child Class Initializer

class Student: Person0 {
    
    var subject: String
    
    init(subject: String, name: String, age: Int) {
        
        // Initialize properties introduced by Student
        self.subject = subject
        
        // Initialize inherited properties
        // using the parent initializer.
        super.init(name: name, age: age)
    }
}


var student = Student(
    subject: "Maths",
    name: "Aman",
    age: 20
)


print("""
Name: \(student.name)
Age: \(student.age)
Subject: \(student.subject)
""")


// Output:
//
// Name: Aman
// Age: 20
// Subject: Maths
