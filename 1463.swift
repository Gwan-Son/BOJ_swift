import Foundation

let input = Int(readLine()!)! // N

var arr: [Int] = Array(repeating: 0, count: input + 1)


for i in 2..<input + 1 {
    arr[i] = arr[i - 1] + 1
    
    if i % 2 == 0 {
        arr[i] = min(arr[i], arr[i / 2] + 1)
    }
    
    if i % 3 == 0 {
        arr[i] = min(arr[i], arr[i / 3] + 1)
    }
}

print(arr[input])
