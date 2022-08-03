//
//  productGalleryViewController.swift
//  Estee Lauder
//
//  Created by Shivika Varshney on 8/1/22.
//

import UIKit
import SwiftUI

class productGalleryViewController: UIViewController {

    @IBOutlet weak var gallery: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let childView = UIHostingController(rootView: Product_Gallery())
        addChild(childView)
        childView.view.frame = gallery.bounds
        gallery.addSubview(childView.view)
    }
    

}
