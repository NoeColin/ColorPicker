//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    var completionHandler: (UIColor) -> Void = {_ in}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func purpleButtonClick(_ sender: Any) {
        completionHandler(ColorAsset.purple.color)
    }
    
    @IBAction func orangeButtonClick(_ sender: Any) {
        completionHandler(ColorAsset.orange.color)    }
    @IBAction func greenButtonClick(_ sender: Any) {
        completionHandler(ColorAsset.green.color)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   

}


