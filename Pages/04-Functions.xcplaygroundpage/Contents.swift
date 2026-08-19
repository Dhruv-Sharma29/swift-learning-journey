// ============================================================
// FUNCTIONS
// ============================================================


// MARK: - 1. Basic Function

// A function is a reusable block of code.
// It can perform a specific task.

func displayPi() {
    print("3.14159")
}

displayPi()


// MARK: - 2. Function with Parameter

// A parameter allows us to pass data into a function.

func triple(value: Int) {
    print(value * 3)
}

triple(value: 3)
// Output: 9


// MARK: - 3. Multiple Parameters

func multiply(numberOne: Int, numberTwo: Int) {
    let result = numberOne * numberTwo
    
    print("The result is \(result)")
}

multiply(numberOne: 5, numberTwo: 10)
// Output: The result is 50


// MARK: - 4. Function with Return Value

// -> Int means the function returns an Int value.

func multiplyReturn(numberOne: Int, numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

let result = multiplyReturn(
    numberOne: 5,
    numberTwo: 10_000_000_000
)

print("Returned result: \(result)")


// ============================================================
// PARAMETER LABELS
// ============================================================


// MARK: - 5. Default Parameter Labels

// By default, the parameter name is also used
// as the argument label.

func sayHello(personOne: String, personTwo: String) {
    print("Hello \(personOne) and \(personTwo)")
}

sayHello(personOne: "Zack", personTwo: "Mark")


// MARK: - 6. Custom Argument Labels

// Syntax:
// func functionName(argumentLabel parameterName: Type)

// "to" and "and" are argument labels.
// "personOne" and "personTwo" are parameter names.

func sayHello(to personOne: String, and personTwo: String) {
    print("Hello \(personOne) and \(personTwo)")
}

sayHello(to: "Zack", and: "Mark")


// MARK: - 7. Omitting Argument Labels

// "_" means the argument label is omitted.

func add(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne + numberTwo
}

print("Addition of 1 and 2 is: \(add(1, 2))")
// Output: Addition of 1 and 2 is: 3


// ============================================================
// DEFAULT PARAMETERS
// ============================================================


// MARK: - 8. Default Parameter Values

// A parameter can have a default value.
// If no value is passed, Swift uses the default value.

func display(teamName: String, score: Int = 0) {
    print("\(teamName): \(score)")
}

display(teamName: "Kings", score: 100)
// Output: Kings: 100

display(teamName: "Tigers")
// Output: Tigers: 0


// IMPORTANT:
// Function parameters are constants by default.
// You cannot directly change a parameter inside the function.
//
// func display(score: Int) {
//     score = 100       // ❌ Error
// }


// ============================================================
// NESTED FUNCTIONS
// ============================================================


// MARK: - 9. Nested Functions

// A function defined inside another function
// is called a nested function.

func calculate(numberOne: Int, numberTwo: Int) {
    
    func cal1() -> Int {
        return numberOne + numberTwo
    }
    
    func cal2() -> Int {
        return numberOne - numberTwo
    }
    
    print(cal1() + cal2())
}

calculate(numberOne: 10, numberTwo: 5)

// cal1() = 10 + 5 = 15
// cal2() = 10 - 5 = 5
// Result = 20


// ============================================================
// VARIADIC PARAMETERS
// ============================================================


// MARK: - 10. Variadic Parameters

// A variadic parameter allows a function
// to accept zero or more values.
//
// Syntax:
// parameterName: Type...

func calculateSum(_ myNumber: Int...) -> Int {
    
    var total = 0
    
    for number in myNumber {
        total += number
    }
    
    return total
}

let sum = calculateSum(10, 20, 30)

print(sum)
// Output: 60
