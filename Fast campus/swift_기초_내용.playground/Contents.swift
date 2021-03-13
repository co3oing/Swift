import Cocoa
import Foundation

var str = "Hello, playground"

let value = arc4random_uniform(10000) + 1

// Tuple
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3

// Boolean
let yes = true
let no = false

let isFourGraterThanFive = 4 > 5

if isFourGraterThanFive {
    print("참")
} else {
    print("거짓")
}

let name = "Jason"
let isJason = name == "Jason"

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Sombody"

print("Msg \(greetingMessage)")

// Scope
var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour

// while
var i = 10

print("-- while") // 조건을 먼저 검사하고 code를 수행
while i < 10 {
    print(i)
    i += 1
}

print("-- repeat") // code를 먼저 수행하고 조건을 검사
i = 10
repeat {
    print(i)
    i += 1
} while i < 10

// For Loop
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0

for i in closedRange {
    print("---> \(i)")
    sum += i
}
print("---> total sum: \(sum)")

var sinValue: CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i)) // sin 그래프 그리기
}

for _ in closedRange {
    print("name: \(name)")
}

for i in closedRange {
    if i % 2 == 0 {
        print("짝수: \(i)")
    }
}

for i in closedRange where i % 2 == 0 {
    print("짝수: \(i)")
}

for i in closedRange {
    if i == 3 {
        continue
    }
    print("i: \(i)")
}

for i in closedRange {
    for j in closedRange {
        print("gugu -> \(i) * \(j) = \(i * j)") // 성능, 가독성 면에서 중첩은 피할 것
    }
}

// Switch
let num = 10

switch num {
case 0:
    print("--> 0 입니다.")
case 0...10:
    print("--> 0...10 사이 입니다.") // 실행 후 종료
case 10:
    print("--> 10 입니다.")
default:
    print("--> 나머지 입니다.")
}

let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("집 동물이네요.")
default:
    print("잘 모르겠어요.")
}

switch num {
case _ where num % 2 == 0:
    print("even")
default:
    print("odd")
}

let coordinate = (x: 0, y: 10)

switch coordinate {
case (0, 0):
    print("원점")
case (_, 0): // 무엇이든 상관 없음
    print("x축")
case (0, let y): // 바로 값을 받아서 사용
    print("y축, y: \(y)")
case (let x, let y) where x == y:
    print("x랑 y랑 같음 x, y = \(x),  \(y)")
default:
    print("좌표 어딘가")
}


