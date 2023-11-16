//
//  ViewController3.swift
//  NotesApp
//
//  Created by GABRIELA AVILA on 11/15/23.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var nameTFOutlet: UITextField!
    
    @IBOutlet weak var dayTFOutlet: UITextField!
    
    @IBOutlet weak var monthTFOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! Cell
        cell.nameOutlet.text = AppData.notesArray[indexPath.row].name
        cell.monthOutlet.text = "\(AppData.notesArray[indexPath.row].month)"
        cell.dayOutlet.text = "\(AppData.notesArray[indexPath.row].day)"
        
        return cell
        
    }
    @IBAction func addAction(_ sender: UIButton) {
        //hi
        
        
        
    }
    
    

}
