//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Reden John Zarra on 15/12/2018.
//  Copyright © 2018 Reden John Zarra. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player! //Implicitly unwrapped optional.. Code is not ran unless there is a player
    var desiredLeague = ""
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
}
