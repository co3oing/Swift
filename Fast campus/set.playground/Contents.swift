import Cocoa

var somArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1, 2] // 중복이 되지 않는다.

someSet.isEmpty
someSet.count
someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet

someSet.remove(1)
someSet


