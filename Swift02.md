# 흐름 제어 구문

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

## for~in & while & repeat~while

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