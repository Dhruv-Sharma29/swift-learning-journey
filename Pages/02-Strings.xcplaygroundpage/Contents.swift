// ============================================================
// STRINGS
// ============================================================


// MARK: - 1. Multiline String

// A multiline String is created using triple quotes (""").
// Useful when a String contains multiple lines.

var aboutMe = """
I am learning iOS.
I am learning Swift.
I wish to become an indie developer.
"""

print(aboutMe)


// String literals
// ↓
// Values written directly inside quotes.
//
// Example:
// "Hello"
// "Swift"
// "123"
// "💖"


// ============================================================
// ESCAPE CHARACTERS
// ============================================================


// MARK: - 2. Escape Characters

// Escape characters allow us to include special characters
// inside a String.


// \"  → Double quote
// \\  → Backslash
// \t  → Tab
// \n  → New line
// \r  → Carriage return


// MARK: - Double Quote

print("It is traditional in programming to print \"Hello World!\"")


// Output:
// It is traditional in programming to print "Hello World!"


// MARK: - Backslash

print("This is a backslash: \\")


// MARK: - Tab

print("Hello\tWorld")


// MARK: - New Line

print("Hello\nWorld")


// MARK: - Carriage Return

// \r moves the cursor back to the beginning of the line.
// Its visible behavior can depend on the output environment.

print("Hello\rWorld")


// ============================================================
// STRING PROPERTIES
// ============================================================


// MARK: - 3. Checking if a String is Empty

var greeting = "Hello playground"

// .isEmpty checks whether the String contains no characters.

if greeting.isEmpty {
    print("The String is empty")
}
else {
    print("The String is not empty")
}


// Example:

var emptyString = ""

if emptyString.isEmpty {
    print("This String is empty")
}


// ============================================================
// CHARACTER
// ============================================================


// MARK: - 4. Character

// Character represents a single character.

var characterStr = "A"

// Swift normally infers this as a String.
// To explicitly create a Character:

var character: Character = "A"

print(character)


// String:
// "A"
//
// Character:
// "A"
//
// The difference is the TYPE.


// Example:

let firstLetter: Character = "D"
let name: String = "Dhruv"


// ============================================================
// STRING CONCATENATION
// ============================================================


// MARK: - 5. String Concatenation

// Concatenation means joining Strings together.
// The + operator joins Strings.

var myGreetings = "Hello" + " " + "World"

print(myGreetings)


// Add more text using +=

myGreetings += "!"

print(myGreetings)

// Output:
// Hello World!


// ============================================================
// STRING INTERPOLATION
// ============================================================


// MARK: - 6. String Interpolation

// String interpolation allows us to insert variables
// and expressions directly into a String.
//
// Syntax:
// "\(value)"

var name: String = "Grayson"
var age = 16

print("Hi, I am \(name) of age \(age)")


// Output:
// Hi, I am Grayson of age 16


// MARK: - Interpolation with Expressions

var num1 = 2
var num2 = 3

print("My num1 is \(num1) and num2 is \(num2), is equal to \(num1 + num2)")


// Output:
// My num1 is 2 and num2 is 3, is equal to 5


// ============================================================
// STRING COMPARISON
// ============================================================


// MARK: - 7. Equality and Comparison

var monthName1 = "August"
var monthName2 = "august"

// String comparison is case-sensitive.

if monthName1 == monthName2 {
    print("We are equal")
}
else {
    print("We are not equal")
}


// "August" != "august"
// because uppercase A and lowercase a are different.


// MARK: - Case-Insensitive Comparison

// Convert both Strings to the same case before comparing.

if monthName1.uppercased() == monthName2.uppercased() {
    print("We are equal")
}


// .uppercased()
// ↓
// Converts the String to uppercase.


// .lowercased()
// ↓
// Converts the String to lowercase.


// Example:

if monthName1.lowercased() == monthName2.lowercased() {
    print("We are equal")
}


// ============================================================
// PREFIX, SUFFIX AND CONTAINS
// ============================================================


// MARK: - 8. hasPrefix()

var compString1 = "Graphic Era"
var compString2 = "Era"

if compString1.hasPrefix(compString2) {
    print("Has prefix")
}


// "Graphic Era"
//      ↑
// "Era" is NOT the prefix.


// MARK: - 9. hasSuffix()

if compString1.hasSuffix(compString2) {
    print("Has suffix")
}


// "Graphic Era"
//       ↑↑↑
// "Era" is the suffix.


// MARK: - 10. contains()

if compString1.contains(compString2) {
    print("Contains")
}


// "Graphic Era"
//         ↑↑↑
// "Era" exists somewhere inside the String.


// ============================================================
// STRING LENGTH
// ============================================================


// MARK: - 11. String Count

// .count returns the number of characters in a String.

print(compString1.count)


// "Graphic Era"
//     ↓
// Number of characters = 11


// Important:
// Swift's String.count counts Characters,
// not simply the number of bytes.


// ============================================================
// VOWEL AND CONSONANT
// ============================================================


// MARK: - 12. Vowel and Consonant

var inputChar: Character = "e"

// lowercased() converts the Character to lowercase.
// This makes the switch easier to handle.

switch inputChar.lowercased() {
case "a", "e", "i", "o", "u":
    print("\(inputChar) is a vowel")

default:
    print("\(inputChar) is a consonant")
}


// Example:
//
// A → vowel
// e → vowel
// I → vowel
// o → vowel
// U → vowel
// b → consonant


// ============================================================
// UNICODE
// ============================================================


// MARK: - 13. Unicode

// Swift Strings support Unicode characters,
// including emojis and characters from different languages.

var myHeart = "💖"

print(myHeart)


// Unicode examples:

let emoji = "🚀"
let hindi = "नमस्ते"
let japanese = "こんにちは"

print(emoji)
print(hindi)
print(japanese)


// ============================================================
// QUICK REVISION
// ============================================================


// MARK: - 14. Quick Revision


// MULTILINE STRING
//
// """
// Multiple
// Lines
// """


// STRING
//
// var name = "Swift"


// CHARACTER
//
// var letter: Character = "A"


// ESCAPE CHARACTERS
//
// \"  → Double quote
// \\  → Backslash
// \t  → Tab
// \n  → New line
// \r  → Carriage return


// STRING CONCATENATION
//
// "Hello" + "World"


// STRING INTERPOLATION
//
// "Hello \(name)"


// EMPTY STRING
//
// string.isEmpty


// LENGTH
//
// string.count


// UPPERCASE
//
// string.uppercased()


// LOWERCASE
//
// string.lowercased()


// PREFIX
//
// string.hasPrefix("Hello")


// SUFFIX
//
// string.hasSuffix("World")


// CONTAINS
//
// string.contains("Swift")


// COMPARISON
//
// string1 == string2


// ============================================================
// IMPORTANT DIFFERENCE
// ============================================================


// MARK: - String vs Character

let text: String = "A"
let letter: Character = "A"


// String can contain multiple characters:
//
// "Hello"
// "Swift"
// "12345"


// Character represents one character:
//
// "A"
// "💖"
// "🚀"
