import UIKit

// immutable
let movies = ["PulpFiction", "Re"]
// mutable
var moviesVar = ["a","b","c"]

let moviesEmpty = [String]()
let resolutions = [String: (Int, Int)]()
let first = movies.first
let last = movies.last

if !movies.isEmpty {
    print("count: \(movies.count)")
}

moviesVar[0...1] = ["replacement"]
moviesVar

moviesVar.append("append")
moviesVar.insert("insert", at: movies.endIndex)
moviesVar += ["operator"]

for (index, movie) in moviesVar.enumerated() {
    print("index: \(index), movie: \(movie)")
}

// forced unwrapping - unsafe
let anOptionalInt:Int? = 1
let anInt:Int = anOptionalInt!

//fatal error
let anOptionalIntB:Int? = nil
if anOptionalIntB != nil {
let anIntB:Int = anOptionalIntB!
}

// Forced unwrapping of the optional’s value
let convertedNumber:String? = "hello"
if convertedNumber != nil {
    //// The exclamation mark effectively says, “I know that this optional definitely has a value; please use it.”
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

// Optional binding
if let actualNumber = convertedNumber {
    print("The string \"\(convertedNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(convertedNumber)\" could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

// implicitly unwrapped optionals
/// The exclamation mark means it is an “implicitly unwrapped optional”.
/// it can be safely assumed to have a value all of the time.
// WHEN REFERENCING AN OBJECT FROM INTERFACE BUILDER
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark


