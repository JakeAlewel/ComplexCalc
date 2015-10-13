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