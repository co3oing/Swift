import Cocoa

struct personStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // 스스로의 property값을 바꾸는 경우 mutating을 사용한다.
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class personClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // class는 mutating X
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = personStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = personClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

// struct, 영향을 안준다.
personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

// class, 둘 다 바뀐다.
personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName


personClass2 = personClass(firstName: "Bob", lastName: "Lee")
personClass1.fullName
personClass2.fullName

personClass1 = personClass2
personClass1.fullName
personClass2.fullName

