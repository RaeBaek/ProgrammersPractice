//
//  BinaryConversion.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func binaryConversion(_ s: String) -> [Int] {
    var s = s
    var deleteZero: Int = 0, times: Int = 0
   
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        deleteZero += replaceCount
        
        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    return [times, deleteZero]
}
