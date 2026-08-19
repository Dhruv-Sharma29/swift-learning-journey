// ============================================================
// STRUCT WITH METHODS AND MULTIPLE INSTANCES
// ============================================================


// MARK: - 1. Structure with Properties and Method

struct Person {
    let firstName: String
    let lastName: String
    
    func sayHello() {
        print("Hello there! \(firstName) \(lastName)")
    }
}


// MARK: - 2. Creating Multiple Instances

let aPerson = Person(
    firstName: "Night",
    lastName: "Wing"
)

let anotherPerson = Person(
    firstName: "Red",
    lastName: "Hood"
)


// MARK: - 3. Calling the Method

aPerson.sayHello()
anotherPerson.sayHello()


// Output:
//
// Hello there! Night Wing
// Hello there! Red Hood
