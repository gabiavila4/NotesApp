//
//  ViewController4.swift
//  NotesApp
//
//  Created by GABRIELA AVILA on 11/15/23.
//

import UIKit

class ViewController4: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    let defaults = UserDefaults.standard
    
    let imagePicker = UIImagePickerController()

    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var dateOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        
        nameOutlet.text = AppData.sname
        dateOutlet.text = AppData.smonth + "/" + AppData.sday
        
        if let imageData = defaults.value(forKey: "photo") as? NSData {
            if let image = UIImage(data:imageData as Data) as? UIImage {
                imageOutlet.image = image
            }
        }
        
    }
    
    @IBAction func cameraAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            
            present(imagePicker, animated: true)
        }
        else{
            
            
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            
            present(imagePicker, animated: true)
            
        }
    }
    
    
    
    @IBAction func photoAction(_ sender: UIButton) {
        
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        present(imagePicker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true){
            
            self.imageOutlet.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            
            AppData.imgArray.append(info[UIImagePickerController.InfoKey.originalImage] as! UIImage)
            
            // saving the image
            let imgData = self.imageOutlet.image!.jpegData(compressionQuality: 1)
            self.defaults.setValue(imgData, forKey: "photo")
            
        }
        
        
    }

   // AppData.ourImages.append()

}
