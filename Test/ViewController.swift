//
//  ViewController.swift
//  Test
//
//  Created by Hanif Salafi on 01/10/18.
//  Copyright © 2018 Hanif Salafi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView?.image = UIImage(named: headlines[myIndex].image)
        titleLabel?.text = headlines[myIndex].title
    }


}
