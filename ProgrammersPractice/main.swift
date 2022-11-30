//
//  main.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/28.
//

import Foundation

var max = 0
var min = 0
var result = ""
var numbers = ""

func solution(_ s: String) -> String {
    let array = s.components(separatedBy: " ")
    max = Int(array[0])!
    min = Int(array[0])!
    for i in 0..<array.count {
        if Int(array[i])! > max {
            max = Int(array[i])!
        } else if Int(array[i])! < min {
            min = Int(array[i])!
        }
    }
    result = "\(min) \(max)"
    return result
}



func solution2(_ s: String) -> String {
    let array = s.components(separatedBy: " ")
    var str: String = ""
    
    for i in 0..<array.count {
        let str1 = array[i].prefix(0)
        if str1.contains("[^0-9]") {
            str += "\(array[i]) "
        } else {
            str += "\(array[i].prefix(1).uppercased() + array[i].lowercased().dropFirst()) "
        }
    }
    str = String(str.dropLast())
    print(str)
    return str
}

func solution3(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    var A1 = A
    var B1 = B
    var a = 0
    var b = 0
    var a1 = 0
    var b1 = 0
    
    for _ in 0..<A1.count {
        a = A1.min()!
        a1 = A1.firstIndex(of: a)!
        A1.remove(at: a1)
        b = B1.max()!
        b1 = B1.firstIndex(of: b)!
        B1.remove(at: b1)
        ans += a * b
        
    }
    return ans
}

func solution4(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    let A1 = A.sorted()
    let B1 = B.sorted(by: >)
    
    for i in 0..<A1.count {
        ans += A1[i] * B1[i]
    }
    return ans
}

func solution5(_ s: String) -> Bool {
    var ans: Bool = false
    var count = 0
    
    for a in s {
        if a == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count < 0 {
            break
        }
    }
    ans = count == 0 ? true : false
    return ans
}

func solution6(_ s: String) -> [Int] {
    var s = s
    var deleteZero: Int = 0, times: Int = 0
   
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        deleteZero += replaceCount
        
        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    print(deleteZero, times)
    return [times, deleteZero]
}

func solution7(_ n: Int) -> Int {
    var fibonacci: [Int] = [0, 1]
    
    for i in 0..<n-1 {
        fibonacci.append((fibonacci[i] + fibonacci[i+1]) % 1234567)
    }
    print(fibonacci[n])
    return fibonacci[n]
}
// 0 1 1 2 3 5 8 13
print("문장을 입력해주세요.")
var s = 50000
solution7(s)
