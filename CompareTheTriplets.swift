//
//  CompareTheTriplets.swift
//  
//
//  Created by yunus oktay on 9.04.2023.
//

import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */


func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aliceScore = 0
    var bobScore = 0
    
    for i in 0..<a.count {
        if a[i] > b[i] {
            aliceScore += 1
        } else if a[i] < b[i] {
            bobScore += 1
        }
    }
    return [aliceScore, bobScore]
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let aTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == 3 else { fatalError("Bad input") }

guard let bTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let b: [Int] = bTemp.split(separator: " ").map {
    if let bItem = Int($0) {
        return bItem
    } else { fatalError("Bad input") }
}

guard b.count == 3 else { fatalError("Bad input") }

let result = compareTriplets(a: a, b: b)

fileHandle.write(result.map{ String($0) }.joined(separator: " ").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

