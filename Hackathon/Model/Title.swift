//
//  Titles.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation

class Title {
    let title: String!
    let video: String!
    let text: String!
    
    init(_ title: String) {
        self.title = title
        self.video = Bundle.main.path(forResource: "Test", ofType: ".mp4")
        self.text = "text"
    }
}
