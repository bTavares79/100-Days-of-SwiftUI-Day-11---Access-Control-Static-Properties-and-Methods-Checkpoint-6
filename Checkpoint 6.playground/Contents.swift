import UIKit

struct Car{
    let model: String
    let seatCount: Int
    private(set) var gear = 0
    
    mutating func gearUp() -> Bool{
        if gear < 10 {
            gear += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func gearDown() -> Bool{
        if gear > 0 {
            gear -= 1
            return true
        } else {
            return false
        }
    }
    
    
}


var myCar = Car(model: "Ford", seatCount: 3)

print(myCar.model)

if myCar.gearUp() {
    print("Gear shift up to gear \(myCar.gear)")
}



