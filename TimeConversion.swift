//
//  TimeConversion.swift
//  
//
//  Created by yunus oktay on 29.08.2022.
//

import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    guard let hh = Int(s.prefix(2)) else { fatalError("Bad input") }

        var time = String(s.dropLast(2))

        if s.hasSuffix("PM"), hh < 12 {
            time = String(time.dropFirst(2))
            time = "\(hh+12)\(time)"
        } else if s.hasSuffix("AM"), hh == 12 {
            time = String(time.dropFirst(2))
            time = "00\(time)"
        }

        return time

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = timeConversion(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
