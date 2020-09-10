# Swift 문법

## Swift 기초 문법

- 헤더 파일을 작성할 필요가 없다.
  - 스위프트는 클래스나 구조체를 선언할 때 정의와 구현을 분리하지 않고 통합해서 작성하는 특성이 있다.
- 대소문자를 구분한다.
  - 함수와 메소드, 인스턴스명의 첫 글자는 소문자
  - 클래스와 구조체, 프로토콜 등 객체의 첫 글자는 대문자
- 구문 끝의 세미콜론은 생략 가능하다.
- 엔트리 포인트(시작점)으로 사용되는 main() 함수가 없다.
  - 대신, @UIApplicationMain 어노테이션을 사용하여 앱을 시작하는 객체를 지정한다.
- 문자열뿐만 아니라 문자도 큰따옴표를 사용한다.
  - 문자를 저장하는 변수나 상수의 타입은 반드시 Character 타입으로 명시해주어야 한다.
- `import` 키워드를 사용하지만, 라이브러리와 프레임워크의 참조 용도이다.
  - 스위프트에서 `import` 구문은 프레임워크나 외부 라이브러리를 사용하기 위한 목적으로만 사용된다.
- C나 Java 처럼 한 줄 주석, 여러 줄 주석 처리 방식을 모두 사용할 수 있다.
  - 특히 주석 내부에 다시 주석을 포함할 수 있다.
- `try ~ catch` 방식의 오류 처리를 지원한다.

## var & let

```Swift
var name: String = "Jeongah"

var birthyear: Int = 1998

let height: Float = 158.0
```

변수는 `var` 로, 상수는 `let` 으로 선언한다.

Swift는 변수나 상수를 정의할 때 그 자료형이 어떤 것인지를 명시해주어야 하는 정적 타이핑 언어이다.

```Swift
var name = "Jeongah"

var birthyear = 1998

let height = 158.0
```

위와 같이 자료형을 명시하지 않고도 값을 가지고 정적 타이핑을 할 수 있게 해주는 것을 타입 추론(Type Inference)이라고 한다.

```swift
Float(birthyear) + height
String(birthyear) + "년에 태어난" + name + "아 안녕!"
```

다른 자료형끼리의 연산은 다음과 같이 한다.

```swift
"\(birthyear)년에 태어난 \(name)아 안녕!"
```

위 코드는 더 간단하게 작성한 코드이다.

## Array & Dictionary

```swift
var languages = ["Swift", "Objective-C", "Python"]
var capitals = [
  "한국": "서울",
  "일본": "도쿄",
  "중국": "베이징",
]
```

배열과 딕셔너리는 모두 대괄호를 이용하여 정의하며, 배열과 딕셔너리에 접근하거나 값을 변경할 때에도 대괄호를 사용한다.

```swift
var languages: [String] = ["Swift", "Objective-C", "Python"]
var capitals: [String: String] = [
  "한국": "서울",
  "일본": "도쿄",
  "중국": "베이징",
]
```

위와 같이 대괄호 안에 어떤 타입을 받을 것인지를 명시할 수 있다.

```swift
var languages: [String] = []
var capitals: [String: String] = [:]
```

위의 코드는 빈 배열과 딕셔너리를 정의하는 코드이다.

해당 코드를 더 간략하게 작성하면 다음과 같다.

```swift
var languages = [String]()
var capitals = [String: String]()
```

타입 뒤에 괄호를 쓰는 것은 생성자(Initializer)를 호출하는 것이다.

## if & switch

```swift
var number = 0
if number == 0 { // if !number
}
```

Swift는 타입 검사를 굉장히 엄격하게 하기 때문에 주석의 코드로 대체하지 못한다.

빈 문자열이나 배열 등을 검사할 때에도 명확하게 길이가 0인지를 검사해야 한다.

```swift
switch age {
  case 8..<14:
  	student = "초등학생"
  case 14..<17:
  	student = "중학생"
  case 17..<20:
  	student = "고등학생"
  default:
  	student = "기타"
}
```

Swift의 `switch` 구문은 패턴 매칭이 가능하여 `8..<14` 와 같이 범위 안에 `age` 가 포함되어있는지 여부를 검사할 수 있다.

```swift
for i in 0..<100 {
	i
}
```

반복문은 위와 같이 작성한다.

```swift
for _ in 0..<100 {
  print("Hello!")
}
```

`i`를 쓰지 않는 단순한 반복문은 `_`를 사용하여 작성할 수 있다.

```swift
var i = 0
while i < 100 {
  i += 1
}
```

`while` 은 조건문의 값이 `true`일 때 계속 반복한다.

