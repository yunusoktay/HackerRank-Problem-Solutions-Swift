//
//  PlusMinus.swift
//  
//
//  Created by yunus oktay on 19.08.2022.
//

import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

var countPos: Float = 0
var countNeg: Float = 0
var countZero: Float = 0
var num = 0

func plusMinus(arr: [Int]) -> Void {
    var arrayCount = arr.count
    while num < arrayCount {
        if arr[num] < 0 {
            countNeg += 1
        }else if arr[num] > 0 {
            countPos += 1
        }else {
            countZero += 1
        }
        num += 1
    }
    
    print(countPos / Float(arrayCount))
    print(countNeg / Float(arrayCount))
    print(countZero / Float(arrayCount))
    
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
