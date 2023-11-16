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
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    @IBAction func addAction(_ sender: UIButton) {
        //hi
        
        
        
    }
    
    

}
