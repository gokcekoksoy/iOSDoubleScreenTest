//
//  ViewController.swift
//  DoubleScreenTest
//
//  Created by Gökçe Köksoy on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //LifeCycle
        print("viewDidLoad function called")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print ("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print ("viewWillDisappear function called")
    }
    
    // önce willappear çağırıldığı için geri geldiğimde ekranda ne olmasını istiyorsam onu bu fonksiyonun altına yazmam gerekir.
    override func viewWillAppear(_ animated: Bool) {
        print ("viewWillAppear function called")
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print ("viewDidAppear funtion called")
    }
    
    
    
    
    @IBAction func nextButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController" {
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.myName = userName
        }
        
    }
}
