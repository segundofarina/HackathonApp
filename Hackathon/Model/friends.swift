//
//  friends.swift
//  Hackathon
//
//  Created by Segundo Fariña on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation
import UIKit


class Friends {
    
    var allFriends = [Friend]()
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    init() {
        allFriends.append(Friend(image: UIImage(named: "people1")!,title: "Juana Martinez",points: 60,color: UIColorFromRGB(rgbValue: 0xFFFFFF)))
        allFriends.append(Friend(image: UIImage(named: "people2")!,title: "Jorge Correas",points: 60,color: UIColorFromRGB(rgbValue: 0xFFFFFF)))
        allFriends.append(Friend(image: UIImage(named: "people3")!,title: "Camilo Redrado",points: 60,color: UIColorFromRGB(rgbValue: 0xFFFFFF)))
        allFriends.append(Friend(image: UIImage(named: "people4")!,title: "Nicolas Acuña",points: 60,color: UIColorFromRGB(rgbValue: 0xFFFFFF)))
        
    }
    
}
    class Friend{
    /*Image, title, percentage, color*/
    let image: UIImage
    let title: String
    let points: Int
    let color: UIColor
    
    init(image: UIImage, title: String, points: Int, color: UIColor) {
        self.image = image
        self.title = title
        self.points = points
        self.color = color
    }
}


