import Cocoa


struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
    }
    
    // 값을 직접 변경하고 싶을 때 -> mutating
    mutating func register() {
        // 등록된 학생 수 증가시키기
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody want to learn someting"
    
    static func 소속학원이름() -> String {
        return "패캠"
    }
}


var lec = Lecture(title: "iOS Basic")


//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}


//remainSeats(of: lec)
lec.remainSeats()

lec.register()
lec.register()
lec.register()

lec.remainSeats()

Lecture.target
Lecture.소속학원이름()


struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}


Math.abs(value: -20)


// 확장
// 제곱, 반
extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value / 2
    }
}


var value: Int = 10

// 제곱, 반
// 기능을 추가해서 사용 가능하다.
extension Int {
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self / 2
    }
}

value.square()
value.half()
