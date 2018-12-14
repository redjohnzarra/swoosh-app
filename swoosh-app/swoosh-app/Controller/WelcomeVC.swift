//
//  ViewController.swift
//  swoosh-app
//
//  Created by Reden John Zarra on 05/12/2018.
//  Copyright © 2018 Reden John Zarra. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        swoosh.frame = CGRect(x: view.frame.size.width/2 - swoosh.frame.size.width/2, y: 50, width: view.frame.size.width/2 - swoosh.frame.size.width/2, height: swoosh.frame.size.height)
//
//        bgImg.frame = view.frame
    }
    
    //calling the back btn on the second VC
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
}

