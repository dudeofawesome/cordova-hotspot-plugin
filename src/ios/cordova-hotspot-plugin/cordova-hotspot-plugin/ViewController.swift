//
//  ViewController.swift
//  cordova-hotspot-plugin
//
//  Created by Louis Orleans on 5/9/16.
//  Copyright © 2016 Louis Orleans. All rights reserved.
//

import UIKit
//import RxSwift

class ViewController: UIViewController {
    
    let appDelegate = AppDelegate()
    
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onclick(sender: AnyObject) {
        label.text = "Scanning..."
        
        appDelegate.scan().subscribeNext { networks in
            print(networks)
            self.label.text = networks.description
        }
    }
}

