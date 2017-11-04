//
//  Lessons.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation
import UIKit

class Lessons {
    var allLessons = [Lesson]()
    
    init() {
        allLessons.append(Lesson(image: UIImage(named: "people1")!,title: "Titulo",percentage: 60,color: UIColor.init(red: CGFloat(255), green: CGFloat(139), blue: CGFloat(54), alpha: CGFloat(1))))
        allLessons.append(Lesson(image: UIImage(named: "people1")!,title: "Titulo",percentage: 60,color: UIColor.init(red: CGFloat(68), green: CGFloat(203), blue: CGFloat(243), alpha: CGFloat(1))))
        
    }
    
    
}

class Lesson {
    /*Image, title, percentage, color*/
    let image: UIImage
    let title: String
    let percentage: Int
    let color: UIColor
    
    init(image: UIImage, title: String, percentage: Int, color: UIColor) {
        self.image = image
        self.title = title
        self.percentage = percentage
        self.color = color
    }
}
