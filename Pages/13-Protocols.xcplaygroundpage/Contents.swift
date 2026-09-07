// ============================================================
// MARK: - Protocols
// ============================================================

// A protocol is a BLUEPRINT or CONTRACT.
//
// It defines what properties and methods a type MUST provide,
// but it does NOT normally provide the actual implementation.
//
// A protocol can be adopted by:
// - Struct
// - Class
// - Enum
//
// Think of it as:
// "If you conform to this protocol, you promise to provide
// these properties and methods."


// ============================================================
// MARK: - Why Do We Use Protocols?
// ============================================================

// Protocols allow different types to follow the same rules.
//
// Example:
//
// Dog    -> must have a name and greet()
// Human  -> must have a name and greet()
// Robot  -> must have a name and greet()
//
// They are completely different types,
// but they follow the same Greetable protocol.


// ============================================================
// MARK: - CustomStringConvertible
// ============================================================

// CustomStringConvertible is a built-in Swift protocol.
//
// It allows us to decide what should be printed when we use:
// print(object)
//
// It requires:
//
// var description: String { get }


// Example:

class Shoe: CustomStringConvertible {

    var color: String
    var size: Int
    var hasLaces: Bool

    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }

    // This is a COMPUTED PROPERTY.
    //
    // It is not a method because it is accessed like a property:
    //
    // shoe.description
    //
    // It calculates and returns a String.

    var description: String {
        "\(color) shoe, size: \(size), has laces: \(hasLaces)"
    }
}

let myShoe = Shoe(
    color: "Black",
    size: 10,
    hasLaces: true
)

print(myShoe)
// Black shoe, size: 10, has laces: true

print(myShoe.description)
// Black shoe, size: 10, has laces: true
