//
//  BorderButton.swift
//  swoosh-app
//
//  Created by Reden John Zarra on 15/12/2018.
//  Copyright © 2018 Reden John Zarra. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4000330106)
            } else {
                self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1457416373)
            }
        }
    }
}
