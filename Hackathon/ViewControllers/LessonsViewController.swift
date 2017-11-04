//
//  LessonsViewController.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit

class LessonsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //let lessons = Lessons()
    let allLessons = Lessons().allLessons

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.rowHeight = CGFloat(170)
    }
    
    //MARK: TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allLessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "lessonCell", for: indexPath) as! LessonsTableViewCell
        let lesson = allLessons[indexPath.row]
        
        // Set values
        cell.lessonImage.image = lesson.image
        cell.lessonName.text = lesson.title
        //cell.lessonPercentage.text = "\(lesson.percentage)%"
        cell.lessonView.backgroundColor = lesson.color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "titlesSegue" {
            let titlesVC = segue.destination as! TitlesViewController
            let rowSelected = self.tableView.indexPathForSelectedRow
            titlesVC.titles = allLessons[(rowSelected?.row)!].titles
            titlesVC.navigationTitle = allLessons[(rowSelected?.row)!].title
        }
    }

    
}
