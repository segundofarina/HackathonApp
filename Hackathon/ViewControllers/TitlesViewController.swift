//
//  TitlesViewController.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit

class TitlesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var navigationTitle: String! = nil
    var titles: [Title]! = nil
    
    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        self.navBar.topItem?.title = navigationTitle
    }

    //MARK: Actions
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "titleCell")!
        
        cell.textLabel?.text = titles[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "videoSegue" {
            let videoVC = segue.destination as! VideoViewController
            let rowSelected = self.tableView.indexPathForSelectedRow
            videoVC.video = titles[(rowSelected?.row)!].video
            videoVC.text = titles[(rowSelected?.row)!].text
            videoVC.navbarTitle = titles[(rowSelected?.row)!].title
        }
        
        if segue.identifier == "startQuizSegue" {
            let quizVC = segue.destination as! QuestionsViewController
            let lesson = navigationTitle
            quizVC.lessons = lesson
        }
    }
    
}
