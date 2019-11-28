import UIKit

var toBeOrNotToBe:String?
toBeOrNotToBe = toBeOrNotToBe ?? "hi"
if let toBe = toBeOrNotToBe {
  print("toBe = \(toBe)")
} else {
   print("nil")
}

var countForCloseRange = 0
for n in closedRange {
    print("n: \(n), count: \(countForCloseRange)")
    countForCloseRange+=1
}

while countForCloseRange < 10 {
    countForCloseRange+=1
}
// Automatic break
// default is mandatory
let lightBulb = "off"
switch lightBulb {
case "on":
    print("The lights are on!")
case "off":
    fallthrough
default:
    print("default")
}

// Range matching
let rangeMyNum = 3_500
switch rangeMyNum {
case 1...1000:
    print("1 to 1000")
case 1001...5000:
    print("1000 to 5000")
default:
    print("default")
}
// Tuple matching
let httpStatus = (402, "payment required")
switch httpStatus {
case (200, "OK"):
    print("OK")
case(300...400, let message):
    print("FAILED \(message)")
case let (status,msg) where status == 402:
    print("filled \(msg)")
case(_, let message):
    print("Default \(message)")
}
// guard with where
let lightBulbAndSwitch = ("on","off")
switch lightBulbAndSwitch {
case let(bulb, button) where bulb == button:
    print("fine")
default:
    print("off")
}

let possibleValue:String? = nil
if possibleValue != nil {
    print("true")
}else{
    print("false")
}
