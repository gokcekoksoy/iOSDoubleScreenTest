//
//  SecondViewController.swift
//  DoubleScreenTest
//
//  Created by Gökçe Köksoy on 6.03.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    var myName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }

}
