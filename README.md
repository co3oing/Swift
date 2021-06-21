# Swift
[![Swift](http://img.shields.io/badge/Swift-v.5.4-blue.svg?style=flat)](https://developer.apple.com/swift/)
[![XCode](http://img.shields.io/badge/XCode-v.12.4-orange.svg?style=flat)](https://developer.apple.com/xcode/whats-new/)

## Contents
- [Swift 기본 문법](https://github.com/co3oing/Swift/blob/master/Swift01.%20Swift%20기본%20문법.md)
- [조건문과 반복문](https://github.com/co3oing/Swift/blob/master/Swift02.%20조건문과%20반복문.md)
- [배열](https://github.com/co3oing/Swift/blob/master/Swift03.%20배열.md)
- 스위프트 기초

## 스위프트 기초
### 콘솔로그
- print : 단순 문자열 출력
- dump : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력

### Any, AnyObject, nil
- Any : 모든 타입을 지칭하는 키워드
- AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
- nil : '없음'을 의미하는 키워드

### 가변 매개변수
- 전달 받을 값의 개수를 알기 어려울 때 사용한다.
- 함수당 하나만 가질 수 있다.
```swift
func sayHelloToFreinds(me: String, freinds: String...) -> String {
  return "Hello \(freinds)! I'm \(me)!"
}

print(sayHelloToFriends(me: "JA", freinds: "A", "B", "C"))
// Hello ["A", "B", "C"]! I'm JA
print(sayHelloToFriends(me: "JA"))
// Hello []! I'm JA
```

### 옵셔널
- !를 이용한 암시적 추출 옵셔널
  ```swift
  var implicitlyUnwrappedOptionalValue: Int! = 100
  
  // 기존 변수처럼 사용 가능
  implicitlyUnwrappedOptionalValue += 1
  
  // nil 할당 가능
  implicitlyUnwrappedOptionalValue = nil
  
  // 잘못된 접근으로 인한 런타임 오류 발생
  // implicitlyUnwrappedOptionalValue += 1
  ```

- ?를 이용한 옵셔널
  ```swift
  var optionalValue: Int? = 100
  
  // nil 할당 가능
  optionalValue = nil
  
  // 기존 변수처럼 사용 불가 (옵셔널과 일반 값은 다른 타입임으로 연산불가)
  // optionalValue += 1
  ```
  
### 옵셔널 바인딩
1. nil 체크 + 안전한 추출
2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값 꺼내기
3. if-let
```swift
func printName(_ name: String) {
  print(name)
}

var myName: String? = nil
var yourName: String! = nil

if let name: String = myName, let freind = yourName {
  printName("\(name) and \(freind)")
}
```

## Reference List
- 꼼꼼한 재은씨의 Swift : 문법편
- [40시간만에 Swift로 iOS 앱 만들기](https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/)
- [iOS 앱 개발 올인원 패키지](https://www.fastcampus.co.kr/dev_online_iosapp)
- [iOS 프로그래밍을 위한 스위프트 기초](https://www.boostcourse.org/mo326)
