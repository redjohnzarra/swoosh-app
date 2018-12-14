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
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        nextBtn.isEnabled = false
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
    
    //always be called before the viewDidLoad on the destination VC
    //so data is guaranteed to be available at viewDidLoad on the destination VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player //player from this VC passed on to the player at the next VC
        } 
    }
}
