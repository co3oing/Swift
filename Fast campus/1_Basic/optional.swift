import Cocoa

var carName: String?
carName = nil
carName = "땡크"

// 최애 영화배우의 이름을 담는 변수 작성 (타입 String?)
// let num = Int("10") -> 타입은 뭘까요?
var favoriteMovieStar: String? = "이동욱"
let num = Int("10")

// 고급 기능 4가지
// Forced unwrapping > 억지로 박스를 까보기
// Optional binding (if let) > 부드럽게 박스를 까보자
// Optional binding (guard) > 부드럽게 박스를 까보자2
// Nil coalescing > 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

//carName = nil
//print(carName!) // 오류

if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없다.")
}


func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else {
        print("Int로 컨버팅 안됨")
    }
}

printParsedInt(from: "100a")


func printParsedInt2(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됨")
        return
    }
    print(parsedInt)
}

printParsedInt2(from: "헬로우 마이네임이즈")


carName = nil
let myCarName: String = carName ?? "모델 S" // carName이 nil이면 모델 S를 디폴트 값으로 넣는다.


// 도전과제
// 1. 최애 음식이름을 담는 변수 작성 (String?)
// 2. 옵셔널 바인딩을 이용해서 값 확인
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미트는 String?
var favoriteFood: String?// = "Ice Cream"

if let foodName = favoriteFood {
    print(foodName)
} else {
    print("좋아하는 음식이 없다.")
}

func printNickName(name: String?) {
    guard let nickName = name else {
        print("값이 없음.")
        return
    }
    print(nickName)
}

printNickName(name: nil)//"Boreum")

