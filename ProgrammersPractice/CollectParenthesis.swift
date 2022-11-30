//
//  CollectParenthesis.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func solution5_1(_ s: String) -> Bool {
    var count = 0
//    for _ in s {
//        s0 = s0.components(separatedBy: "()").joined()
//
//        if s0 == "" {
//            ans = true
//            break
//        } else {
//            ans = false
//            if !s0.contains("()") {
//                break
//            }
//        }
//    }
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
    return count == 0 ? true : false
}
