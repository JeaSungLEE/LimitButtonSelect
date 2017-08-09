//
//  Button.swift
//  LimitButtonSelect
//
//  Created by jeasung.lee on 2017. 8. 9..
//  Copyright © 2017년 jeasung.lee. All rights reserved.
//

import UIKit

class Button: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                changed()
            } else {
                normal()
            }
        }
    }
    
    func changed() {
        self.setTitle("Selected", for: .normal)
        self.backgroundColor = UIColor.red
    }
    
    func normal() {
        self.setTitle("Normal", for: .normal)
        self.backgroundColor = UIColor.white
    }
    
}
