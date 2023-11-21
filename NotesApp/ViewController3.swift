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
        
        var n2 = ""
        var d2 = 0
        var m2 = 0
        
        if let n = nameTFOutlet.text{
        n2 = n
        }
        if let d = Int(dayTFOutlet.text!)
        {
        d2 = d
        }
        if let m = Int(monthTFOutlet.text!){
        m2 = m
        }
        
        var n1 = Notes(name: n2, day: d2, month: m2)
        AppData.notesArray.append(n1)
        self.tableViewOutlet.reloadData()
        
    }
    
    //delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            AppData.notesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        
        
        
    }
    

}
