import UIKit

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    weak var customer: Customer?
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var johnny : Customer?
var myVisa : CreditCard?

johnny = Customer(name: "john")
//myVisa =
johnny!.card = CreditCard(number: 1234_5678_9012_3456, customer: johnny!)

johnny!.card!.number

johnny = nil

