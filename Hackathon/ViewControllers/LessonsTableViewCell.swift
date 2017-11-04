//
//  LessonsTableViewCell.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit

class LessonsTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var lessonImage: UIImageView!
    @IBOutlet weak var lessonName: UILabel!
    @IBOutlet weak var lessonPercentage: UILabel!
    @IBOutlet weak var lessonView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
