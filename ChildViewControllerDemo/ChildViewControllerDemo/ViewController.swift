//
//  ViewController.swift
//  ChildViewControllerDemo
//
//  Created by Mac on 20/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var firstViewControoler: FirstViewController = {
        let storyBOard  = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBOard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        print("hello")
        self.addAsChildViewControoler(childViewController: viewController)
        return viewController
     }()
    
    lazy var secViewController: SecViewController = {
        let storyBOard  = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBOard.instantiateViewController(withIdentifier: "SecViewController") 
        
        self.addAsChildViewControoler(childViewController: viewController)
        print("hello")
        
        return viewController as! SecViewController
    }()
    
    lazy var thirdViewController: ThirdViewController = {
        let storyBOard  = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBOard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        self.addAsChildViewControoler(childViewController: viewController)
        print("hello")
        
        return viewController
    }()
    
    
    func addAsChildViewControoler(childViewController: UIViewController) {
        
        addChildViewController(childViewController)
        
        view.addSubview(childViewController.view)
        childViewController.view.frame = view.bounds
        
        
    }
    
    
    @IBAction func CHnageScreen(_ sender: Any) {
        
        let segment = sender as! UISegmentedControl
        
        switch segment.selectedSegmentIndex {
        case 0:
             firstViewControoler.view.isHidden = false
        case 1:
            secViewController.view.isHidden = false
        case 2:
            thirdViewController.view.isHidden = false
        case 4:
            debugPrint("hello")
        default :
                debugPrint("hello")
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

 
}

