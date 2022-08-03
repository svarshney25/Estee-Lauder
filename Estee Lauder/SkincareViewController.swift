//
//  SkincareViewController.swift
//  Estee Lauder
//
//  Created by Shivika Varshney on 8/1/22.
//

import UIKit

class SkincareViewController: UIViewController {

  
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var amount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.isHidden = true
    }
    

    @IBAction func bag(_ sender: Any) {
        text.isHidden = false
    }
    
    @IBAction func add(_ sender: Any) {
        guard let presentValue = Int(amount!.text!) else { return }

         let newValue = presentValue + 1
         amount!.text = String(newValue)
    }
    
    @IBAction func minues(_ sender: Any) {
        
        guard let currentValue = Int(amount!.text!) else { return }

         let minusValue = currentValue - 1
         amount!.text = String(minusValue)
    }
}
