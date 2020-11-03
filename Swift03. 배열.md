# 배열



## 배열 순회 탐색

배열을 순회 탐색할 때에는 `for~in` 구문을 많이 사용한다.

```swift
var cities = ["Seoul", "New York", "LA", "Santiago"]
let length = cities.count // 배열의 길이는 4

for i in 0..<length {
  print("\(i)번째 배열 원소는 \(cities[i])입니다.")
}
```

아이템의 개수가 3개면 배열의 길이도 3이 된다. 스위프트에서 배열의 길이를 구할 때에는 `.count` 를 이용한다.

```swift
var cities = ["Seoul", "New York", "LA", "Santiago"]

for row in cities {
  print("배열 원소는 \(row)입니다.")
}
```

위는 배열의 순회 특성, 즉 Iterator를 이용하는 방식이다. 

이 방식으론 몇 번째 아이템인지 인덱스를 바로 알기는 어렵다. 이때는 `firstIndex(of:)` 를 사용하면 아이템을 통해 인덱스 값을 역으로 찾을 수 있다.

```swift
var cities = ["Seoul", "New York", "LA", "Santiago"]

for row in cities {
  let index = cities.firstIndex(of: row) // 배열의 인덱스를 확인하여 index 상수에 대입
  print("\(index)번째 배열 원소는 \(row)입니다.")
}
```

위와 같이 배열의 아이템을 넣으면 그 아이템이 배열의 몇 번째 인덱스에 저장되어 있는지 알려준다.

## 배열의 동적 선언과 초기화

값을 할당하지 않은 빈 배열을 선언하고 초기화할 때는 두 가지 형식을 사용할 수 있다.

1. `Array <아이템 타입>`

```swift
var cities = Array<String>() // 문자열 배열의 선언 및 초기화
var cities : Array<String> // 문자열 배열을 선언
cities = Array() // 배열의 초기화
```

이처럼 사용 시점에서 `<>` 기호를 사용하여 배열 내부에서 사용할 아이템 타입을 지정하는 문법을 제네릭(Generic)이라고 한다.

2. `아이템 타입]()`

```swift
var cities = [String]() // 배열 선언 및 초기화
var cities : [String] // 배열 선언
cities = [String]() // 배열 초기화 1
cities = [] // 배열 초기화 2
```

배열 초기화 1 은 선언된 배열 그대로를 초기화하지만, 배열 초기화 2는 빈 배열 하나를 새로 만들어서 이것을 변수에 할당한다. 

다음은 배열 초기화 방식의 다양한 예시이다.

```swift
var cities : [String] // 선언
cities = [String]() // 초기화

var country : [String] // 선언
country = [] // 초기화

var list : [Int] = [] // 타입 어노테이션 + 초기화

var rows : Array<Float> = [Float]() // 타입 어노테이션 + 제네릭 + 초기화

var tables : [String] = Array() // 타입 어노테이션 + 구방식의 초기화
```

선언된 배열이 비어있는지를 체크해야 할 경우엔 배열 구조체에서 제공하는 속성인 `isEmpty` 를 사용하는 것이 좋다.

```swift
var list = [String]()

if list.isEmpty {
  print("비어있다.")
} else {
  print("배열에 \(list.count)개의 아이템이 있다.")
}
```

## 배열 아이템 동적 추가

* `append(_:)` : 아이템 추가 전에 먼저 배열의 크기를 +1 만큼 확장하여 인덱스 공간을 확보 후, 인자값을 마지막 인덱스 위치에 추가한다.

* `insert(_:at:)` : `at:` 뒤에 인덱스 위치를 넣어 해당 위치에 아이템을 추가하고 이를 기준으로 나머지 인덱스들은 하나씩 다음으로 밀려난다.

* `append(contentsOf:)` : 여러 개의 아이템을 배열에 한꺼번에 추가한다. 메소드의 인자값은 항상 배열이어야 한다.

```swift
var cities = [String]()

cities.append("Seoul")
cities.append("New York")
cities.insert("Tokyo", at: 1)
cities.append(contentsOf: ["Dubai", "Sydney"])

/*
0 "Seoul"
1 "Tokyo"
2 "New York"
3 "Dubai"
4 "Sydney"
*/
```

## 범위 연산자를 이용한 인덱스 참조

```swift
var alphabet = ["a", "b", "c", "d", "e"]

alphabet[0...2] // ["a", "b", "c"]
alphabet[1..<3] // ["b", "c"]

alphabet[1...2] = ["1", "2", "3"] // alphabet = ["a", "1", "2", "3", "d", "e"]
alphabet[2...4] = ["A"] // alphabet = ["a", "1", "A", "e"]
```

범위 연산자로 읽어 들인 배열에 새로운 값을 할당하면 할당할 배열 아이템과 범위 연산자로 읽어 들인 배열의 크기가 일치하지 않을 때도 값을 변경할 수 있다.