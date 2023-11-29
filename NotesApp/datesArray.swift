//
//  datesArray.swift
//  NotesApp
//
//  Created by OLIVIA MENDEZ on 11/16/23.
//

import Foundation

public class Notes: Codable{
    var name : String
    var day : Int
    var month : Int
    

    init(name: String, day: Int, month: Int) {
        self.name = name
        self.day = day
        self.month = month
        
    }
    
    
    
    
}
