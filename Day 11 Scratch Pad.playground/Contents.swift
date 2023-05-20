import UIKit


// ======================= How to limit access to inernal data using access control ==============

// Three keywords for variables inside of a struct
// private = Only logic inside of the struct can read and write to this variable
// if using the private access control on a property there is a good chance you will have to
// create your own initializer


// file private = only logic inside of this file can read and write to this variable
// public = anything anywhere can read and write to this variable
// private(set) = anyone can read this property but only inside the struct can write to it

struct BankAccount {
    // The private keyword make this variable readable and writable
    // only to the logic inside of the struct
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

print(account.funds)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}




// ================================== Static properties and Methods ===============================
// These belong to the school struct itself not to an indvidual instance itself
// The static keyword means that this property and method are not unique to each instance of the struct. They are global. This is like a global singular function
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// Structs that use static properties and methods are good for global app config or user data in the
// instructors example. So like the global config for a machine for example
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilnema = "settings.json"
    static let homeURL = "https://www.hackingwithSwift.com"
}


// An exmaple of a static method used to be an exmaple throughout an application
// In this example you can have instances of employee and there is a global method
// on emplyee that can be used throughout the code
struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "BigGuy12345", password: "12345")
}
