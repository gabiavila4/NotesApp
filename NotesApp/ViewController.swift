//
//  ViewController.swift
//  NotesApp
//
//  Created by GABRIELA AVILA on 11/14/23.
//


public class AppData{
     
    static var cmonth = ""
    static var cyear = ""
    static var cday = ""
    static var notesArray = [Notes]()
    static var sname = ""
    static var smonth = ""
    static var sday = ""
    let defaults = UserDefaults.standard
    static var ourImages : Array<UIImage> = []
    
   
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
        
        AppData.cmonth = monthOutlet.text!
        AppData.cday = dayOutlet.text!
        AppData.cyear = yearOutlet.text!
        
    }
    
    
    
}

