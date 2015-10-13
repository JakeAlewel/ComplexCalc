//
//  main.swift
//  ComplexCalc
//
//  Created by Jacob Alewel on 10/13/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

func add(first : Int, second : Int) -> Int {
    return first + second;
}

func subtract(first : Int, second : Int) -> Int {
    return first - second;
}

func multiply(first : Int, second : Int) -> Int {
    return first * second;
}

func divide(first : Int, second : Int) -> Int {
    return first / second;
}

func genericMathOperation(mathOperation : (Int, Int) -> Int, first : Int, second : Int) -> Int {
    return mathOperation(first, second);
}

print(add(5, second: 5));
print(subtract(5, second: 5));
print(multiply(5, second: 5));
print(divide(5, second: 5));
print(genericMathOperation(subtract, first: 5, second: 5));

func addArrayContents(values : [Int]) -> Int {
    var total : Int = 0;
    for value in values {
        total = add(total, second: value);
    }
    return total;
}

func multiplyArrayContents(values : [Int]) -> Int {
    var total : Int = 1;
    for value in values {
        total = multiply(total, second: value);
    }
    return total;
}

print(addArrayContents([1,2,3,4,5]));
print(multiplyArrayContents([1,2,3,4,5]));

