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
