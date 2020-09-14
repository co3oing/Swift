# 조건문과 반복문

## if & guard

```swift
var number = 0
if number == 0 { // if !number
}
```

Swift는 타입 검사를 굉장히 엄격하게 하기 때문에 주석의 코드로 대체하지 못한다.

빈 문자열이나 배열 등을 검사할 때에도 명확하게 길이가 0인지를 검사해야 한다.

```swift
func divide(base: Int) {
  guard base != 0 else {
    printf("연산할 수 없습니다.")
    return
  }
  let result = 100 / base
  print(result)
}
```

`guard` 구문은 `if` 구문과 마찬가지로 주어진 표현식의 결과가 참인지 거짓인지에 따라 구문의 실행 여부를 결정짓는 방식의 조건문이다.

`guard` 구문에는 `else` 블록이 필수이며, 심각한 오류가 발생할 경우 전체 구문을 조기 종료(Early Exit)하기 위한 목적으로 사용된다.

조건을 체크하여 실행 흐름을 종료시킬 때에는 가급적 `guard` 구문을 사용하는 것이 좋다.

## #available

```swift
if #available(iOS 9, OSX 10.10, watchOS 1, *) {
	// iOS 9용 API 구문 또는 OS X 10.10용 API 구문, watchOS 1용 API 구문
} else {
	// API를 사용하지 못했을 때에 대한 실패 처리
}
```

`#available` 구문은 OS 버전별로 구문을 분리해야 할 때 사용한다.

이 구문은 실행 중인 기기의 버전을 체크하고 입력된 버전들과 비교하여 `true`나 `false` 형태의 결과를 반환하므로, `if` 구문이나 `guard` 구문 등 조건식을 사용하는 분기문에 넣어 사용하면 좋다.

## switch

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
Swift의 `switch` 구문은 일치하는 비교 패턴이 있을 경우 해당 블록의 실행 코드를 처리하고, 더이상의 비교 없이 전체 분기문을 종료하여 `break` 구문을 생략할 수 있다.

```swift
let sampleChgar : Characgter = "a"
switch sampleChar {
  case "a":
  	fallthrough
  case "A":
  	print("글자는 A 입니다.")
  default :
  	print("일치하는 글자가 없습니다.")
}
// 글자는 A 입니다.
```

이로인해 스위프트에서는 암시적인 Fall Through을 지원하지 않는다. 또한 `case` 실행 블록이 비어 있어도 안된다.

따라서 인접한 `case` 블록으로 실행 흐름을 전달하기 위해선 위와 같이 명시적으로 `fallthrough` 구문을 사용하여야 한다.

```swift
var value = 3
switch value {
  case 0, 1:
  	print("0 또는 1입니다.")
  default :
  	print("default입니다.")
}
```

`case` 비교 패턴을 작성할 때, 두 가지 이상의 비교 패턴을 묶어 비교할 수 있다.

```swift
var value = (2, 3)
switch value {
  case let (x, 3) :
  	print("튜플의 두 번째 값이 3일 때 첫 번째 값은 \(x)입니다.")
  default :
  	print("일치하는 값이 없습니다.")
}
```

또한 위와 같이 Tuple이나 특정 타입으로 캐스팅된 객체도 사용할 수 있다.

`switch` 구문에서는 튜플 내부의 아이템이 비교 대상과 부분적으로 일치할 경우, 구문의 비교 패턴 전체가 일치하는 것으로 간주한다.

이때 일치하지 않는 나머지 부분을 상수나 변수화하여 사용할 수 있다. 

(x, y) 처럼 모든 아이템이 변수 처리 되어 있을 경우에도 패턴적으로 일치한다고 여긴다.

```swift
var value = (2, 3)
switch value {
  case (0..<2, 3) :
  	print("범위 A에 포함되었습니다.")
  default :
  	print("범위 B에 포함되었습니다.")
}
```

위와 같이 범이 연산자를 사용한 패턴 비교 방식도 가능하다.

```swift
var point = (3, -3)
switch point {
  case let (x, y) where x == y :
  	print("\(x)과 \(y)은 x==y 선 상에 있습니다.")
}
```

`where` 구문을 추가하면 각 `case` 블록별로 보다 복잡한 패턴까지 확장하여 매칭할 수 있다.

`point` 변수는 `switch`구문의 `case` 블록에서 각각 `(x, y)` 로 할당되고, 이 임시 변수들은 다시 `where` 구문에서 조건 비교에 사용된다.

## for~in & while

```swift
for i in 0..<100 {
	i
}
```

반복문은 위와 같이 작성한다.

C 스타일의 `for` 구문(초기값, 조건식, 증감값으로 처리되는)은 더 이상 지원되지 않아 `for~in` 구문만 사용 가능하다.

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

```swift
var n = 1024
repeat {
  n = n * 2
}
while n < 1000
printf("n = \(n)")
```

`repeat~while` 반복문은 다른 언어에서 `do~while` 구문에 해당한다.

