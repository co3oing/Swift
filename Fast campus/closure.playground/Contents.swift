import Cocoa

// closure = 이름이 없는 메소드
var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

let result = multiplyClosure(4, 2)


func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}


let voidClosure: () -> Void = {
    print("iOS~~")
}

voidClosure()


// Capturing Values
var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count


/*
{ (param) -> return type in
    statement
    ...
}
*/

// Example 1: Cho Simple Closure
let choSimpleClosure = {
    
}

choSimpleClosure()

// Example 2: 코드블록을 구현한 Closure
let choSimpleClosure2 = {
    print("Hello, Closure")
}

choSimpleClosure2()

// Example 3: 인풋 파라미터를 받는 Closure
let choSimpleClosure3: (String) -> Void = { name in
    print("Hello, \(name)")
}

choSimpleClosure3("Boreum")

// Example 4: 값을 리턴하는 Closure
let choSimpleClosure4: (String) -> String = { name in
    let message = "iOS, \(name)"
    return message
}

let result4 = choSimpleClosure4("Lucia")

// Example 5: Closure를 파라미터로 받는 함수 구현
//func choSimpleFunction(choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요.")
//}
//
//choSimpleFunction(choSimpleClosure: {
//    print("Hello from closure") // 출력 안됨
//})
func choSimpleFunction(choSimpleClosure: () -> Void) {
    print("함수에서 호출이 되었어요.")
    choSimpleClosure()
}

choSimpleFunction(choSimpleClosure: {
    print("Hello from closure")
})

// Example 6: Trailing Closure
func someSimpleFunction(message: String, choSimpleClosure6: () -> Void) {
    print("함수에서 호출이 되었어요, 메세지: \(message)")
    choSimpleClosure6()
}

someSimpleFunction(message: "로나로나 메로나, 코로나 극혐", choSimpleClosure6: {
    print("헬로 코로나 from closure")
})

someSimpleFunction(message: "로나로나 메로나, 코로나 극혐") { // 생략 가능. 깔끔쓰
    print("헬로 코로나 from closure")
}
