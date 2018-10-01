//
//  ShadowView.swift
//  breakpoint
//
//  Created by MinRiDaddy on 01/10/2018.
//  Copyright © 2018 MinRiDaddy. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor

        super.awakeFromNib()
    }
    
}
