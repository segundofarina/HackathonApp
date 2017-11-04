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
        var titles = [Title]()
        titles.append(Title("Hola"))
        titles.append(Title("Hola"))
        titles.append(Title("Cahu"))
        
        allLessons.append(Lesson(image: UIImage(named: "bond")!,title: "Bonos",percentage: 60,color: UIColorFromRGB(rgbValue: 0x44CBF3),titles: titles))
        allLessons.append(Lesson(image: UIImage(named: "caculator")!,title: "Matemáticas",percentage: 60,color: UIColorFromRGB(rgbValue: 0xFF8B36),titles: titles))
        allLessons.append(Lesson(image: UIImage(named: "moneyBag")!,title: "Finanzas",percentage: 60,color: UIColorFromRGB(rgbValue: 0xFFCA4D),titles: titles))
        allLessons.append(Lesson(image: UIImage(named: "people1")!,title: "Titulo",percentage: 60,color: UIColorFromRGB(rgbValue: 0x794AFF),titles: titles))
        
    }
    
    
}

class Lesson {
    /*Image, title, percentage, color*/
    let image: UIImage
    let title: String
    let percentage: Int
    let color: UIColor
    let titles: [Title]
    
    init(image: UIImage, title: String, percentage: Int, color: UIColor, titles: [Title]) {
        self.image = image
        self.title = title
        self.percentage = percentage
        self.color = color
        self.titles = titles
    }
}
