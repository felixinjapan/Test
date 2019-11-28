import UIKit
///https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html#ID55

class Person {
    let name: String
    weak var apt: Apartment?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
// Strong Reference Cycles --> never get deallocated
class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    unowned var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var felix:Person? = Person(name: "Felix")
var apt:Apartment? = Apartment(unit: "myapt")

felix!.apt = apt
apt!.tenant = felix

apt
felix

apt = nil

print(felix!.name)
print(felix!.apt!.unit)

