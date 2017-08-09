//
//  ViewController.swift
//  LimitSelectDemo
//
//  Created by jeasung.lee on 2017. 8. 9..
//  Copyright © 2017년 jeasung.lee. All rights reserved.
//

import UIKit
import LimitButtonSelect

class ViewController: UIViewController {
    var limitButtonSelect : LimitButtonSelect!
    var limitButtonSelect2 : LimitButtonSelect!
    
    @IBOutlet var button1: Button!
    @IBOutlet var button2: Button!
    @IBOutlet var button3: Button!

    @IBOutlet var button4: Button!
    @IBOutlet var button5: Button!
    @IBOutlet var button6: Button!
    @IBOutlet var button7: Button!
    @IBOutlet var button8: Button!
    @IBOutlet var button9: Button!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        limitButtonSelect = LimitButtonSelect(limit: 1, buttons: [button1, button2, button3])
        limitButtonSelect2 = LimitButtonSelect(limit: 3, buttons: [button4, button5, button6, button7, button8, button9], defaultIndex: [2,4])
        
        button1.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        
        button4.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button5.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button6.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button7.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button8.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
        button9.addTarget(self, action: #selector(buttonClicked2(_:)), for: .touchUpInside)
    }
    
    func buttonClicked(_ sender: UIButton) {
        limitButtonSelect.on(button: sender)
    }
    
    func buttonClicked2(_ sender: UIButton) {
        limitButtonSelect2.on(button: sender)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

