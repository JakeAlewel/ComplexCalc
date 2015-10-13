//
//  main.swift
//  ComplexCalc
//
//  Created by Jacob Alewel on 10/13/15.
//  Copyright © 2015 Jacob Alewel. All rights reserved.
//

import Foundation

/*

Basic Calculator

*/

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

/*

Array Calculator

*/

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

func countArrayContents(values : [Int]) -> Int {
    return values.count;
}

func averageArrayContents(values : [Int]) -> Int {
    let totalValue = addArrayContents(values);
    return totalValue / values.count;
}

print(countArrayContents([1,2,3,4,5]));
print(averageArrayContents([1,2,3,4,5]));

func genericArrayOperation(arrayOperation : ([Int]) -> Int, values : [Int]) -> Int {
    return arrayOperation(values);
}

print(genericArrayOperation(averageArrayContents, values: [1,2,3,4,5]));

/*

Tuple Calculator

*/

func addTuples(first : (Int,Int), second : (Int,Int)) -> (Int,Int) {
    var result : (Int,Int) = first;
    result.0 += second.0;
    result.1 += second.1;
    
    return result;
}

func subtractTuples(first : (Int,Int), second : (Int,Int)) -> (Int,Int) {
    var result : (Int,Int) = first;
    result.0 -= second.0;
    result.1 -= second.1;
    
    return result;
}

print(addTuples((1,1), second: (2,3)));
print(subtractTuples((1,1), second: (2,3)));

func addDictionaries(first : Dictionary<String,Int>, second : Dictionary<String,Int>) -> Dictionary<String,Int> {
    return Dictionary<String,Int>();
}





