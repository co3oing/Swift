import Cocoa

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func printFullname(firstName: String, lastName: String) {
    print("fullname: \(firstName) \(lastName)")
}

printFullname(firstName: "Jeongah", lastName: "Park")

func printFullname2(_ firstName: String, _ lastName: String) {
    print("fullname: \(firstName) \(lastName)")
}

printFullname2("Jeongah", "Park")

func printFullname3(firstName: String, lastName: String) -> String{
    return firstName + " " + lastName // "\(firstName) \(lastName)"
}

print("fullname: " + printFullname3(firstName: "Jeongah", lastName: "Park"))

