//
//  ViewController.swift
//  UINavigationViewController
//
//  Created by Marina Karpova on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var displaySecondButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FirstVC"
        
        self.displaySecondButton = UIButton(type: .system)
        self.displaySecondButton.setTitle("SecondVC", for: .normal)
        displaySecondButton.sizeToFit()
        displaySecondButton.center = view.center
        displaySecondButton.addTarget(self, action: #selector(performDisplaySecondVC), for: .touchUpInside)
        view.addSubview(displaySecondButton)
    }
    
    @objc func performDisplaySecondVC(sender: Any) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }


}

