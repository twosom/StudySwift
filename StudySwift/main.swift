//
//  main.swift
//  StudySwift
//
//  Created by Desire L on 2021/02/19.
//
//


import Foundation

func add(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a / b
}


let firstOperand = 2
let secondOperand = 3
let op = "+"
/*
var function: ((Int, Int) -> Int)?

switch op{
case "+":
    function = add
case "-":
    function = subtract
case "*":
    function = multiply
case "/":
    function = divide
default:
    break
}

if let calc = function {
    let result = calc(firstOperand, secondOperand)
    print("\(firstOperand) \(op) \(secondOperand) = \(result)")
}
 */
/*
var function: ((Int, Int) -> Int)?

switch op {
case "+":
    function = add
case "-":
    function = subtract
case "*":
    function = multiply
case "/":
    function = divide
default:
    print("not supported")
    break
}


func processResult(function f: (Int, Int) -> Int, lhs: Int, rhs: Int) -> Int {
    return f(lhs, rhs)
}
if let calc = function {
    let result = processResult(function: calc, lhs: firstOperand, rhs: secondOperand)
    print("\(firstOperand) \(op) \(secondOperand) = \(result)")
} else {
    print("NILL")
}
 */

func selectOperator(operator op: String) -> ((Int, Int) -> Int)? {
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


func processResult(function f: (Int, Int) -> Int, lhs: Int, rhs: Int) -> Int {

    return f(lhs, rhs)
}


if let calc = selectOperator(operator: op) {
    let result = calc(firstOperand, secondOperand)
    print("\(firstOperand) \(op) \(secondOperand) = \(result)")

} else {
    print("not supported")
}