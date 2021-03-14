import Cocoa

struct Person {
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet {
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
     
//    var fullName: String {
//        get {
//            return "\(firstName) \(lastName)"
//        }
//        
//        set {
//            // newValue "Jay Park"
//            
//            if let firstName = newValue.components(separatedBy: " ").first {
//                self.firstName = firstName
//            }
//            
//            if let lastName = newValue.components(separatedBy: " ").last {
//                self.lastName = lastName
//            }
//        }
//    }
    
    // 위의 코드를 간략하게
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
//    var fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
    
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName
//
//
//person.fullName
//person.fullName = "Jay Park"
//
//person.fullName
//person.firstName
//person.lastName
//
//Person.isAlien
//
//person.isPopular

person.fullName
