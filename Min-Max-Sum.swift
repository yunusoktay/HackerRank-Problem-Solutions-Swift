//
//  Min-Max-Sum.swift
//  
//
//  Created by yunus oktay on 23.08.2022.
//

import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    var arr2 = arr
    arr2.sort()
    var num = 0
    var min = 0
    var max = 0
    var arrayCount = arr2.count - 1
    
    while arrayCount >= 0 {
        
        if arrayCount == arr2.count - 1 {
            max += arr2[arrayCount]
        }else if arrayCount == 0 {
            min += arr2[arrayCount]
        }else {
            max += arr2[arrayCount]
            min += arr2[arrayCount]
        }
        
        arrayCount -= 1
        
    }

    print(min, max)

}

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
