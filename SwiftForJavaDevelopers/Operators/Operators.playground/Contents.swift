import UIKit

//Bitwise
let not:UInt8 = ~0b0000_0001
let or:UInt8 = 0b0000_0001 | 0b1111_1110
let and:UInt8 = 0b0000_0001 & 0b1111_1110
let xor:UInt8 = 0b0000_0001 ^ 0b1111_1110

//Unsigned shift
let leftShift:UInt8 = 0b0000_0001 << 1
let rightShift:UInt8 = 0b0000_0010 >> 1
let bigLeft:UInt8 = UInt8.max << 1
let bigRight:UInt8 = UInt8.max >> 1

//Signed shift
let signedNegativeLeft:Int8 = -10 << 1
let singedNegativeRight:Int8 = -10 >> 1
let signedPostivieRight:Int8 = 2 >> 1

var optional:String?
// default
var valueOrDefault:String = optional ?? "DefaultV"

//(5 times)
var closedRange = 1...5
//(4 times)
var halfOpen = 1..<5
var count = 0
for _ in halfOpen {
    count+=1
}
print("count: \(count)")
// Type safe
//let overflow1 = UInt8.max + 1
// Overflow
let thaBetter = UInt8.max &+ 1
let bigTimes = UInt8.max &* UInt8.max
let minToMax = UInt8.min &- 1
//Unlike the &+, &-, and &* operators, these operators did not provide two’s-complement arithmetic behavior; they provided special case behavior for division, remainder by zero, and Int.min/-1. These tests should be written explicitly in the code as comparisons if needed.
//let devideByZero = 1 &/ 0

// java is 128
1 << 2 + 5
(1 << 2) << 3
// 7 in Java
// swift goes from left without any priortization
3 & 2 | 3 | 4 ^ 1
