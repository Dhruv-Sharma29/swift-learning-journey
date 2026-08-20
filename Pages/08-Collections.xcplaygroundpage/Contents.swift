// ============================================================
// COLLECTIONS
// ============================================================


// MARK: - 1. What are Collections?

// Collections are used to store multiple values in one variable.
//
// Swift's main collection types:
//
// 1. Array      → Ordered collection
// 2. Set        → Unordered collection of unique values
// 3. Dictionary → Key-Value pairs


// Quick comparison:
//
// Array
// → Ordered
// → Allows duplicates
// → Access using index
//
// Set
// → Unordered
// → Unique values only
// → No index-based access
//
// Dictionary
// → Key-Value pairs
// → Access using a key


// IMPORTANT:
// Arrays, Sets and Dictionaries are VALUE TYPES.
//
// Copying them creates an independent collection.


// ============================================================
// ARRAYS
// ============================================================


// MARK: - 2. Array

// An Array stores values of the same type
// in a specific order.
//
// Array is:
// → Ordered
// → Indexed
// → Allows duplicate values
// → Zero-based indexing


// MARK: - 3. Creating an Array

// Swift can infer the type automatically.

var students = ["A", "B", "C", "D"]


// Explicit type

var fruits: [String] = []


// Array with values and explicit type

var cars: [String] = ["Audi", "BMW", "Ford"]


// Why use [String]?

// Usually Swift can infer the type:
//
// var cars = ["Audi", "BMW", "Ford"]
//
// Swift automatically knows:
// cars → [String]
//
// Explicit type annotation is useful when:
// - Creating an empty array
// - You want to make the intended type clear


// MARK: - 4. Creating an Empty Array

var numbers = [Int]()


// Another way:

var numbers2: [Int] = []


// Both create an empty [Int] array.


// MARK: - 5. Array(repeating:count:)

let zeros = Array(repeating: 0, count: 10)

print(zeros)

// Output:
// [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]


// Creates an array containing:
// 10 elements
// Each element = 0


// ============================================================
// ARRAY PROPERTIES
// ============================================================


// MARK: - 6. count

print(students.count)


// .count → number of elements


// MARK: - 7. isEmpty

print(students.isEmpty)


// true  → no elements
// false → contains elements


// ============================================================
// ACCESSING ARRAY ELEMENTS
// ============================================================


// MARK: - 8. Array Index

let names = ["A", "B", "C", "D"]

print(names[0])    // A
print(names[1])    // B
print(names[3])    // D


// Index starts from 0.
//
// [0] → first element
// [1] → second element
// [2] → third element
// etc.


// ❌ Don't access an index that doesn't exist:
//
// print(names[10])
//
// This causes a runtime error.


// MARK: - 9. First and Last Element

print(names.first)
print(names.last)


// .first and .last return OPTIONAL values.
//
// More about Optional later.


// ============================================================
// MODIFYING ARRAYS
// ============================================================


// MARK: - 10. append()

var students2 = ["A", "B", "C", "D"]

students2.append("E")

print(students2)

// ["A", "B", "C", "D", "E"]


// append() adds an element to the END.


// MARK: - 11. insert()

students2.insert("F", at: 0)

print(students2)

// ["F", "A", "B", "C", "D", "E"]


// insert(value, at: index)


// MARK: - 12. remove(at:)

students2.remove(at: 3)

print(students2)


// Removes the element at the specified index.


// MARK: - 13. removeLast()

students2.removeLast()

print(students2)


// Removes the last element.


// MARK: - 14. removeFirst()

students2.removeFirst()

print(students2)


// Removes the first element.


// MARK: - 15. removeAll()

students2.removeAll()

print(students2)

// []


// Removes all elements.


// ============================================================
// ARRAY SEARCHING
// ============================================================


// MARK: - 16. contains()

let numbers3 = [10, 20, 30, 40, 50]

print(numbers3.contains(30))
// true

print(numbers3.contains(100))
// false


// contains() returns a Boolean:
//
// true  → element exists
// false → element doesn't exist


if numbers3.contains(20) {
    print("20 exists in the array")
}


// MARK: - 17. firstIndex(of:)

let values = [10, 20, 30, 20, 40]

print(values.firstIndex(of: 20))

// Returns the first index where 20 appears.
//
// Result:
// Optional(1)


// ============================================================
// ADDING MULTIPLE ELEMENTS
// ============================================================


// MARK: - 18. Adding Multiple Values

var studentNames = ["A", "B", "C"]

studentNames += ["D", "E"]

print(studentNames)


// Another way:

studentNames.append(contentsOf: ["F", "G"])

print(studentNames)


// ============================================================
// COMBINING ARRAYS
// ============================================================


// MARK: - 19. Combining Arrays

let array1 = [1, 2, 3, 4, 5]
let array2 = [6, 7, 8, 9, 10]

let array3 = array1 + array2

print(array3)

// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


// ============================================================
// NESTED ARRAYS
// ============================================================


// MARK: - 20. Array Inside Array

let array4 = [array1, array2]

print(array4)


// [
//     [1, 2, 3, 4, 5],
//     [6, 7, 8, 9, 10]
// ]


print(array4.count)
// 2


print(array4[0].count)
// 5


print(array4[0][3])
// 4


// Breakdown:
//
// array4[0]
// → first inner array
//
// array4[0][3]
// → fourth element of first inner array
//
// → 4


// ============================================================
// FOR-IN LOOP
// ============================================================


// MARK: - 21. Loop Through an Array

let carNames = ["Audi", "BMW", "Ford"]

for car in carNames {
    print(car)
}


// Output:
//
// Audi
// BMW
// Ford


// ============================================================
// ARRAY VALUE TYPE
// ============================================================


// MARK: - 22. Arrays are Value Types

let myArray: [Int] = [1, 2, 3, 4, 5]

var myArray2 = myArray

myArray2.append(20)

print(myArray)
// [1, 2, 3, 4, 5]

print(myArray2)
// [1, 2, 3, 4, 5, 20]


// Changing myArray2 does NOT change myArray.
//
// Array → Value Type


// ============================================================
// SETS
// ============================================================


// MARK: - 23. Set

// A Set stores UNIQUE values.
//
// Set is:
// → Unordered
// → No duplicate values
// → Fast membership checking
// → No index-based access


let mySet: Set = [1, 2, 3, 4, 5]

print(mySet)


// MARK: - 24. Duplicate Values in Set

let duplicateSet: Set = [1, 2, 2, 3, 3, 4, 5]

print(duplicateSet)


// Duplicates are automatically removed.
//
// Result contains:
// 1, 2, 3, 4, 5


// MARK: - 25. Sets are Case-Sensitive

let namesSet: Set<String> = [
    "a", "b", "c",
    "A", "B"
]

print(namesSet)


// "a" and "A" are different values.


// ============================================================
// CREATING SETS
// ============================================================


// MARK: - 26. Different Ways to Create a Set

let set0 = Set([1, 2, 3, 4, 5])

let set1: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8]

let set2: Set<Int> = [6, 7, 8, 9, 10]


// ============================================================
// SET OPERATIONS
// ============================================================


// MARK: - 27. Union

let union = set1.union(set2)

print(union)


// union → combines all unique values
//
// set1: [1,2,3,4,5,6,7,8]
// set2: [6,7,8,9,10]
//
// Result:
// [1,2,3,4,5,6,7,8,9,10]


// MARK: - 28. Intersection

let intersection = set1.intersection(set2)

print(intersection)


// intersection → values common to BOTH sets
//
// Result:
// [6,7,8]


// MARK: - 29. Symmetric Difference

let symmetricDifference = set1.symmetricDifference(set2)

print(symmetricDifference)


// Values that exist in one set,
// but NOT in both.
//
// Common values are removed.


// MARK: - 30. Subtracting Sets

let subtract = set1.subtracting(set2)

print(subtract)


// Values in set1 that are NOT in set2.
//
// Result:
// [1,2,3,4,5]


// ============================================================
// SET SEARCHING
// ============================================================


// MARK: - 31. contains()

let languages: Set = ["Swift", "Python", "Java"]

print(languages.contains("Swift"))
// true

print(languages.contains("C++"))
// false


// ============================================================
// DICTIONARIES
// ============================================================


// MARK: - 32. Dictionary

// A Dictionary stores data as KEY-VALUE pairs.
//
// Syntax:
//
// [KeyType: ValueType]


var studentGrade: [String: Int] = [
    "A": 1,
    "B": 2,
    "C": 3
]


// Example:
//
// "A" → key
// 1   → value
//
// "B" → key
// 2   → value


// ============================================================
// ACCESSING DICTIONARY VALUES
// ============================================================


// MARK: - 33. Accessing a Value

print(studentGrade["A"])


// Dictionary lookup returns an Optional.
//
// Why?
//
// The key might not exist.


// Example:

if let value = studentGrade["A"] {
    print(value)
}
else {
    print("No data")
}


// This is called OPTIONAL BINDING.


// MARK: - 34. Nil-Coalescing Operator

print(studentGrade["A"] ?? 0)


// If the value exists:
// → use the value
//
// If the value is nil:
// → use 0


// Example:

print(studentGrade["Unknown"] ?? 0)

// Output:
// 0


// ============================================================
// OPTIONAL INTRODUCTION
// ============================================================


// MARK: - 35. What is an Optional?

// An Optional represents:
// → A value
// OR
// → No value (nil)
//
// Syntax:
//
// Int?
// String?
// Double?
//
//
// Example:

var score: Int? = 100

score = nil


// score can contain:
// 100
// OR
// nil


// Dictionary lookups return Optional values
// because the requested key may not exist.


// ============================================================
// FORCE UNWRAPPING
// ============================================================


// MARK: - 36. Force Unwrapping

// ! forcefully extracts the value from an Optional.

let grade = studentGrade["A"]!

print(grade)


// ⚠️ Be careful.
//
// If the key doesn't exist:
//
// studentGrade["Unknown"]!
//
// the program crashes.
//
// Prefer optional binding or ?? when possible.


// ============================================================
// UPDATING DICTIONARIES
// ============================================================


// MARK: - 37. Update Existing Value

studentGrade["A"] = 7

print(studentGrade)


// If the key already exists,
// its value is replaced.


// MARK: - 38. Add a New Key-Value Pair

studentGrade["ABCD"] = 10

print(studentGrade)


// If the key doesn't exist,
// Swift adds a new key-value pair.


// MARK: - 39. updateValue()

studentGrade.updateValue(20, forKey: "B")

print(studentGrade)


// updateValue() updates an existing key
// or creates it if it doesn't exist.


// ============================================================
// REMOVING DICTIONARY VALUES
// ============================================================


// MARK: - 40. removeValue(forKey:)

studentGrade.removeValue(forKey: "A")

print(studentGrade)


// Removes the key-value pair.


// MARK: - 41. Getting the Old Value

let oldValue = studentGrade.updateValue(12, forKey: "C")

print(oldValue ?? 0)


// updateValue() returns the OLD value.
//
// If there was no previous value,
// it returns nil.


// ============================================================
// DICTIONARY KEYS AND VALUES
// ============================================================


// MARK: - 42. keys

let score: [String: Int] = [
    "Richard": 500,
    "Aman": 400,
    "Dhruv": 600
]

let playerNames = score.keys

print(playerNames)


// keys contains all dictionary keys.


// MARK: - 43. values

let playerScores = score.values

print(playerScores)


// values contains all dictionary values.


// MARK: - 44. Loop Through Dictionary

for (player, score) in score {
    print("\(player): \(score)")
}


// Output order is not guaranteed.


// ============================================================
// DICTIONARY COUNT AND EMPTY
// ============================================================


// MARK: - 45. Dictionary Properties

print(score.count)

print(score.isEmpty)


// count → number of key-value pairs
// isEmpty → true or false


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 46. Collection Comparison


// ARRAY
//
// var numbers = [1, 2, 3, 3]
//
// ✓ Ordered
// ✓ Indexed
// ✓ Allows duplicates
// ✓ Access using index
//
// numbers[0]


// SET
//
// let numbers: Set = [1, 2, 3]
//
// ✓ Unordered
// ✓ Unique values
// ✗ No index-based access
//
// numbers.contains(2)


// DICTIONARY
//
// let scores: [String: Int] = [
//     "Aman": 100
// ]
//
// ✓ Key-value pairs
// ✓ Access using key
// ✓ Keys must be unique
//
// scores["Aman"]
