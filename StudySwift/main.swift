//
//  main.swift
//  StudySwift
//
//  Created by Desire L on 2021/02/19.
//
//


import Foundation

func selectOperator(operator op: String) -> ((Int, Int) -> Int)? {
    let str = "CALL Nested Function"
    func add(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function) matching operator \(op)")
        return a + b
    }

    func subtract(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function) matching operator \(op)")
        return a - b
    }

    func multiply(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function) matching operator \(op)")
        return a * b
    }

    func divide(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function) matching operator \(op)")
        return a / b
    }

    switch op {
    case "+":
        return add
    case "-":
        return subtract
    case "*":
        return multiply
    case "/":
        return divide
    default:
        return nil
    }
}
let op = "*"

let selectOperator2 = selectOperator(operator: op)

if let calc = selectOperator2 {
    let first = 2
    let second = 3
    let result = calc(first, second)
    print("\(first) \(op) \(second) = \(result)")
} else {
    print("NIL")
}