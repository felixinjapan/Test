import UIKit

// mutable
var str = "Hello, playground"
str = "Welcome"
// immutable
let myself = "Felix"
// Impossilbe to do myself = "chon"
// Concatenation
let concat = "\(str) \(myself)"

// Data type
let anInt = 1
let aDouble = 1e2
let aFloat:Float = 1.2
let aByte = Int8(0xA)
let twoByteMax = Int16.max
let twoByteMin = Int16.min
// 0xAF to binary is 1010 1111
let twoByte = Int16(0xAF)
let fourByte = Int32(0xAAAA)
let fourByteMin = Int32.min
let eightByteMax = UInt64.max
let eightByteMin = UInt64.min

let small:UInt8 = UInt8(0x08)
let bigInteger:UInt16 = UInt16(small)

let あ = "hello"
let 😀 = "smile"
// Tuple
let tuple = ("Hello", "World")
print("\(tuple.0) and \(tuple.1)")
let (hello, world) = ("Hi", "There")
print("\(hello) \(world)")
let (honey, _) = tuple
print("\(honey)" )

func greet(name person: String, _ day: String) -> String {
 return "Hello \(person), today is \(day)."
}
print(greet(name: "Me", "E"))

// Optional
// An optional is used to let a variable of any type represent the lack of value.
// Null in Java can mean there is no pointer pointing to referece whereas in Swift, there is no value.
var epicOptional:String?
epicOptional = "epic"

// var nonOptional:String = nil
