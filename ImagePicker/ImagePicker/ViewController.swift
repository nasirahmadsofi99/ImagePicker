//
//  ViewController.swift
//  ImagePicker
//
//  Created by Deftsoft on 05/03/20.
//  Copyright © 2020 Deftsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imagePicker:ImagePicker!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
    }


    @IBAction func showButtonAction(_ sender: UIButton) {
       self.imagePicker.present(from: sender)
        
        
    }
    
    
}


extension  ViewController:ImagePickerDelegate{
    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
    
    
}

