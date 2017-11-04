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
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    init() {
        allLessons.append(Lesson(image: UIImage(named: "bond")!,title: "Bonos",percentage: 60,color: UIColorFromRGB(rgbValue: 0x44CBF3)))
        allLessons.append(Lesson(image: UIImage(named: "caculator")!,title: "Matemáticas",percentage: 60,color: UIColorFromRGB(rgbValue: 0xFF8B36)))
        allLessons.append(Lesson(image: UIImage(named: "moneyBag")!,title: "Finanzas",percentage: 60,color: UIColorFromRGB(rgbValue: 0xFFCA4D)))
        allLessons.append(Lesson(image: UIImage(named: "people1")!,title: "Titulo",percentage: 60,color: UIColorFromRGB(rgbValue: 0x794AFF)))
        
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
