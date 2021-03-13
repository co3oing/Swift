import Cocoa

// In-out parameter
var value = 3

func incrementAndPrint(_ value: inout Int) { // inount을 안 쓸 경우 오류
    value += 1 // 직접 변경하고 싶으면 inout 사용하기
    print(value)
}

incrementAndPrint(&value)

// Function as a param
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)
function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)


