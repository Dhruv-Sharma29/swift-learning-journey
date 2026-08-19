// ========================================
// STRUCTURES
// ========================================

// MARK: - 1. Basic Structure

struct Person {
    var name: String
}

let person = Person(name: "John")


// MARK: - 2. Methods

struct Person2 {
    var name: String
    
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

let person2 = Person2(name: "John")
person2.sayHello()


// MARK: - 3. Value Types

struct Point {
    var x: Double
    let y: Double
}

var point = Point(x: 10, y: 20)

var point2 = point
point2.x = 100

print(point.x)      // 10
print(point2.x)     // 100


// MARK: - 4. Multiple Instances

struct Shirt {
    var size: String
    var color: String
}

let myShirt = Shirt(size: "M", color: "White")
let yourShirt = Shirt(size: "L", color: "Black")


// MARK: - 5. Default Values

struct Odometer {
    var count: Int = 0
}

let odometer = Odometer()

print(odometer.count)   // 0


// MARK: - 6. Mutating Methods

struct Odometer2 {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
    }
}

var odometer2 = Odometer2()

odometer2.increment()

print(odometer2.count)   // 1


// MARK: - 7. Memberwise Initializer

struct BankAccount {
    var accountNumber: Int
    var balance: Double = 0.0
}

let account1 = BankAccount(
    accountNumber: 1234,
    balance: 5000
)

let account2 = BankAccount(
    accountNumber: 5678
)


// MARK: - 8. Custom Initializer

struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        self.celsius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        self.celsius = kelvin - 273.15
    }
}

let temp1 = Temperature(celsius: 25)
let temp2 = Temperature(fahrenheit: 212)
let temp3 = Temperature(kelvin: 273.15)

print(temp1.celsius)   // 25
print(temp2.celsius)   // 100
print(temp3.celsius)   // 0

// MARK: - 9. Property Observer

