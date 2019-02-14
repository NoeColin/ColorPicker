//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorPickLink" {
         let delegateVC = segue.destination as! ColorPickerViewController
            delegateVC.completionHandler = userDidChooseColor
        }
    }

}

extension ViewController {
    func userDidChooseColor(color: UIColor){
        var lastColor = view.backgroundColor
        view.backgroundColor = color
        self.dismiss(animated: true, completion: nil)
        let alert = UIAlertController(title: "Attention", message: "Souaitez vous garder cete couleur ou revenir à l'ancienne?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Garder celle ci", comment: "Default action"), style: .default, handler: { _ in
            
        }))
        alert.addAction(UIAlertAction(title: NSLocalizedString("Revenir à l'ancienne", comment: "Default action"), style: .default, handler: { _ in
            UIView.animate(withDuration: 1, animations: {
                self.view.backgroundColor = lastColor
            }, completion: (nil)
            )
            
           
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

