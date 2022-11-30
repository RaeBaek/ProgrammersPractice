//
//  CollectParenthesis.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func collectParenthesis(_ s: String) -> Bool {
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
