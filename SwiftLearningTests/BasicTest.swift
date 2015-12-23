//
//  BasicTest.swift
//  SwiftLearning
//
//  Created by icom on 16/12/15.
//  Copyright © 2015 icom. All rights reserved.
//

import XCTest
@testable import SwiftLearning

class BasicTests: XCTestCase {
    
  
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testExample(){
        print("@@@@@@@@@@@@@@@@@")
        
//        let basicPrograme = BasicLearning()
//        basicPrograme.basicPrograme()

        var classTest = ClassTest()
        classTest.showId()
        print(classTest.givenName)
        classTest.givenName = "testing"
        
        classTest = ClassTest(size:10, name:"Name")
//        classTest.size = 1 //the size is let, cannot change the value
        classTest.showId()
        print(classTest.fullName)
        classTest.length = 15
        print(classTest.fullName)

        
        
        print("Testing start")
    }
    
    
}