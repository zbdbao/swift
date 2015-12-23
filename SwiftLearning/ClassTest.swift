//
//  ClassTest.swift
//  SwiftLearning
//
//  Created by icom on 17/12/15.
//  Copyright © 2015 icom. All rights reserved.
//

import Foundation

class ClassTest{
    
//    The id must be declare as value, or else add the questions.
    var id:Int = 0
//    The size will be nil
    let size:Int?
    
    var givenName:String?
    var nickName:String?
    
    var length:Int{
        willSet{
            print("will set the value of lenth")
        }
        
        didSet{
            if length > 10{
                nickName = "Tall"
            }else{
                nickName = "Short"

            }
        }
    }
    
    var fullName: String{
        get{
            print("get being invoked")
            return "\(nickName) : \(givenName)"
        }
        set{
//            
            print("set being invoked")
        }
    }
    
    
    
//    If contains let value, the size must init during init
    init(){
        size = 0
        length = 0
    }
    
    init(size:Int, name:String){
        self.size = size;
        self.givenName = name;
        length = 0
    }
//    Before GC, will be called
//    Note, not required () for deinit, and it will be called once no one is using.
    deinit{
        print("\(givenName) being deinited.")
    }
    
//    override func simple
    
    func showId(){
        print("This is the id: \(id), with size:\(size) for class:\(givenName)")
    }
    
}