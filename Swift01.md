# Swift 문법

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

