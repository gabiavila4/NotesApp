//
//  ViewController.swift
//  NotesApp
//
//  Created by GABRIELA AVILA on 11/14/23.
//


class AppData{
   // static var month : String
    
  //  static var day : String
    
  //  static var year : String
    
}

import UIKit

var jan = 31
var feb = 28
var mar = 31
var apr = 30
var may = 31
var jun = 30
var july = 31
var aug = 31
var sep = 30
var oct = 31
var nov = 30
var dec = 31


class ViewController: UIViewController {
    @IBOutlet weak var monthOutlet: UITextField!
    
    @IBOutlet weak var dayOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitAction(_ sender: UIButton) {
        
        
        
    }
    
    
    
}

