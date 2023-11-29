//
//  ViewController2.swift
//  NotesApp
//
//  Created by GABRIELA AVILA on 11/15/23.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    @IBOutlet weak var collectionOutlet: UICollectionView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionOutlet.delegate = self
        collectionOutlet.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionOutlet.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppData.imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! myCell
        
        let image = AppData.imgArray[indexPath.row]
        
        cell.imageOutlet.image = image
        
        
        
        return cell
        
    }
   
    

    
    
}

public class myCell: UICollectionViewCell{
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
 }
