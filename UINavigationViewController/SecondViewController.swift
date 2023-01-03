//
//  SecondViewController.swift
//  UINavigationViewController
//
//  Created by Marina Karpova on 03.01.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createImageTitleView()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(performAdd(param:)))
        
    }
    
    
    fileprivate func createImageTitleView() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "apple2")
        imageView.image = image
        
        self.navigationItem.titleView = imageView
    }
    
    @objc func performAdd(param: UIBarButtonItem) {
        print("add click")
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    //    override func viewDidAppear(_ animated: Bool) {
    //        super.viewDidAppear(true)
    //        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    //    }
    
    //    @objc func goBack() {
    ////        self.navigationController?.popViewController(animated: true)
    //
    //        //Получаем текущий массив контроллеров
    //        var curentControllerArray = self.navigationController?.viewControllers
    //
    //        //Удаляем последний контроллер
    //        curentControllerArray?.removeLast()
    //
    //        // Присвоим
    //        if let newController = curentControllerArray {
    //            self.navigationController?.viewControllers = newController
    //        }
    //    }
    
}
