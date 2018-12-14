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

}
