//
//  Staircase.swift
//  
//
//  Created by yunus oktay on 21.08.2022.
//

import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */
var num = 0
var num1 = 1

func staircase(n: Int) -> Void {
    while num < n {
    let string1 = String(repeating: " ", count: n - num1)
    let string2 = String(repeating: "#", count: num + 1)
    print(string1 + string2)
    num += 1
    num1 += 1
  }
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
