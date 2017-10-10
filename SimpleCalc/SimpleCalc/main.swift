//
//  main.swift
//  SimpleCalc
//
//  Created by gmhding on 2017/10/10.
//  Weihao Ding, Assignment#2

import Foundation

print("Enter an expression separated by returns")
print("Or")
print("Enter a set of numbers and one operand(count, avg, fact) separated by one space")

let allResponse = readLine(strippingNewline: true)!.components(separatedBy: " ")

if (allResponse.count > 1) {
    switch allResponse[allResponse.count - 1] {
      case "count":
        print("Count: \(allResponse.count-1)")
      case "avg":
        var sum = 0;
        for index in 0...allResponse.count-2 {
            sum += Int(allResponse[index])!
        }
        print("Average: \(sum / Int(allResponse.count - 1))");
      case "fact":
        var result = 1;
        var factNum = Int(allResponse[0])!
        if (factNum >= 0) {
            for number in 1...factNum {
                result = result * number;
            }
            print("Result: \(result)")
        }
      default:
        print("That's not valid, please enter again.")
    }
} else {
    let response = readLine(strippingNewline: true)!
    let firstNum = Int.init(response)

    let operation = readLine(strippingNewline: true)!
    let oper = String.init(operation)

    let response2 = readLine(strippingNewline: true)!
    let secondNum = Int.init(response2)

    func add(a: Int, b: Int) -> Int {
        return a + b;
    }

    func sub(a: Int, b: Int) -> Int {
        return a - b;
    }

    func mul(a: Int, b: Int) -> Int {
        return a * b;
    }

    func div(a: Int, b: Int) -> Int {
        return a / b;
    }

    func mod(a: Int, b: Int) -> Int {
        return a % b;
    }

    func count(nums: [Int]) -> Int {
        return nums.count;
    }

    var result = 0;

    if (oper == "+") {
        result = add(a: firstNum!, b: secondNum!);
        print("Result: \(result)")
    } else if (oper == "-") {
        result = sub(a: firstNum!, b: secondNum!);
        print("Result: \(result)")
    } else if (oper == "/") {
        result = div(a: firstNum!, b: secondNum!);
        print("Result: \(result)")
    } else if (oper == "%") {
        result = mod(a: firstNum!, b: secondNum!);
        print("Result: \(result)")
    } else if (oper == "*") {
        result = mul(a: firstNum!, b: secondNum!);
        print("Result: \(result)")
    }
}





