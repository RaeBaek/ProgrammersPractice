//
//  SumMinimum.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func solution3_1(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    var A1 = A
    var B1 = B
    
    // [실행] 버튼을 누르면 출력값을 볼 수 있습니다.
    print("Hello Swift")
    
    for _ in 0..<A.count {
        guard let a = A1.min() else { return 0 }
//        guard let a1 = A.firstIndex(of: a) else { return 0 }
        A1.remove(at: a)
        guard let b = B1.max() else { return 0 }
//        guard let b1 = B.firstIndex(of: b) else { return 0 }
        B1.remove(at: b)
        ans += a * b
        
    }
    return ans
}
