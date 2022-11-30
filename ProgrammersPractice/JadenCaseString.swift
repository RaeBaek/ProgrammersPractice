//
//  JadenCaseString.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/28.
//

import Foundation

func jadenCaseString(_ s:String) -> String {
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
    return str
}

