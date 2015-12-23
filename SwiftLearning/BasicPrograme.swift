//
//  BasicSwiftLearning.swift
//  RobinLearn
//
//  Created by icom on 15/12/15.
//  Copyright © 2015 icom. All rights reserved.
//

import Foundation

class BasicLearning{
    
    func basicPrograme(){
        
        let oranges = -5//Int.min//5
        var three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine
        let pi_option = 3 + pointOneFourOneFiveNine// cannot be three + pointOneFourOneFiveNine
        
        var fruit = ""
//        var null 
//        fruit = 0
        
        let apples = 10
        //    Define the value with \()
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        
        //        Define array.
        var fruits = ["apple", "banana", "orange"]
        fruits[0]="passion fruit"
        
        //        Define mapping key-value
        
        var carModels = ["BMW":"7", "BENZ":"S"]
        carModels["Lexus"] = "LX"
        
        
//        Tuple
        let errorCodeTuple = (404, "Not found")
        var (code, description) = errorCodeTuple
//        var (code: Int, description: String) = errorCodeTuple//Invalid
        print("The error code is \(code)")
//        Just want to get only 1 value, can use _ to occupy
        var (codeAnother, _) = errorCodeTuple
        print("The error code is \(codeAnother)")
//        Or with below
        var codeOneMore = errorCodeTuple.0

        
        //        Create empty string array
        
        var emptyStry = [String]()
        var emptyStryWithOccupy = [String:Float]()
        var emptyArray = []
        var emptyArrayWithOccupy = [:]
        
        
        //        For loop
        for tempFruit in fruits{
            
            print(tempFruit)
        }
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        var largestNum = 0
        for(kinds,numbers) in interestingNumbers{
            print("looping for numbers of \(kinds)")
            for number in numbers{
                if largestNum < number{
                    largestNum = number
                }
            }
        }
        print("The for loop of largest number is :\(largestNum)")
        
        
//        Define the value with ?/!, wtih ? , the value canbe nil
        var favouriteFruit: String? = "Orange"
        
        print("This is the value:\(favouriteFruit == nil) ")
        
//        favouriteFruit = true Cannot be the Bool
        var greeting: String? = "Hello!"
        if let snack = favouriteFruit{
            greeting = "Hello \(favouriteFruit)"
            
            print("Greeting:\(greeting)")
            print("Snack:\(snack)")

        }
        
        favouriteFruit = nil
        print("This is the value:\(favouriteFruit == nil) ")
//        Use of ??
        var nickname: String? = nil
        var fullname: String = "Li"
        
        print("Hello, \(nickname ?? fullname)")

        if let smallNum = Int("4"), largeNum = Int("8") where smallNum < largeNum{
            print("small num \(smallNum) is smaller then \(largeNum)")
        }
        
        
//        Switch
//        Note: defaut is mandatory
//        Not required for break.
        var drinkOrder = "Red tea"
        
        switch drinkOrder{
            
        case "coffee":
            print("Coffee ordered!")
        case "Red tea":
            print("Red tea ordered!")

        case let drink  where drink.hasSuffix("tea"):
            print("Tea ordered!")
        case "milk","juice":
            print("Milk or juice")
        default :
            print("Water ordered")
        }
        
//        While loop
        var intValue = 100
        while intValue < 100{
//            intValue *= 2
            intValue = intValue * 2
        }
        print("Int value:\(intValue)")
        intValue = 100
        repeat {
//            intValue *= 2
            intValue = intValue * 2
        }while intValue < 100
        print("Int value:\(intValue)")

//        The usage of ..< and ... in the loop, difference is ..< don't include 10, ... will include 10
//        This will make the index of the loop
        for i in 0 ..< 10{// 0 ... 9
            print(i)
        }

        
//        The testing of basic func
        
        var valueReturn = self.greeting("meme", day:"Wednesday", monthes:9)
        print(valueReturn)
        
        let statics = self.calcuate(interestingNumbers["Fibonacci"]!)
        print(statics.sum)
        print(statics.0)
        
        let sums = self.sum(1,2,3,4,5,6)
        print(sums)
        self.sum()
        
        print("The return value of sub-func\(self.subFunc())")
        
    }
    
    
//    Test of func
    func greeting(name: String, day: String, monthes:Int) ->String{
        return "Hello \(name), today is \(day)! It is your \(monthes)th month"
    }
    
//    Func with multiple value return
    func calcuate(rawdata: [Int]) ->(min: Int, max: Int, sum: Int){
        var min = rawdata[0], max = rawdata[0]
        var sum = 0
        
        for var i in rawdata{
            if min > i{
                min = i
            }
            
            if max < i{
                max = i
            }
            sum += i
        }
        
        return (min, max, sum)
    }
    
//    func with multiple parameter
    func sum(rawdata: Int...) -> Int{
        var sum = 0
        for i in rawdata {
            sum += i
        }
        return sum
    }
//    Sub func test
//    Note: the value won't be changed in sub func
    func subFunc()-> Int{
        var value = 10
        func child() -> Int{
            print("Child invoked")
            return (value+5)
        }
        print(child())
        return value
    }
    
    func tryCatchFunc(){
        
        do{
            try throwErrorFunc()
            
            sum(123,123)
        }catch Error.{
            
        }
    }
    
    func throwErrorFunc throws{
//        throw Error()
    }
    
}