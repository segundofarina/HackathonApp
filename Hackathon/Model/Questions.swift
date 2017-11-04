//
//  Questions.swift
//  Hackathon
//
//  Created by Segundo Fariña on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation
import UIKit

class Question {
    let q : String
    let ans1 : String
    let ans2 : String
    let ans3 : String
    let ans4 : String
    
    
    init(q: String, ans1: String, ans2: String, ans3: String, ans4: String) {
        self.q = q
        self.ans1 = ans1
        self.ans2 = ans2
        self.ans3 = ans3
        self.ans4 = ans4
    }
}

class DataBase {
    var category1 = [Question] ()
    var category2 = [Question] ()
    var counter1 : Int = 0
    var counter2 : Int = 0
    
    func nextCategory1()-> Question?{
        if counter1 == category1.count{
            return nil
        }
        let q = category1[counter1]
        counter1+=1
        return q
    }
    
    func nextCategory2()-> Question?{
        if counter2 == category2.count{
            return nil
        }
        let q = category2[counter2]
        counter2+=1
        return q
    }
    
    init() {
        category1.append(Question( q:"Prueba 1", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        category1.append(Question( q:"Prueba 2", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        category1.append(Question( q:"Prueba 3", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        
        category2.append(Question( q:"Prueba 1", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        category2.append(Question( q:"Prueba 2", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        category2.append(Question( q:"Prueba 3", ans1: "resp1", ans2: "ans2", ans3: "resp3", ans4:"resp4") )
        
    }


}
