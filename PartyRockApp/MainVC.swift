//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Roydon Jeffrey on 12/4/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
           
            let selectedPartyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: selectedPartyRock)
            return cell
            
        }else {
           return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vybz1 = PartyRock(imageURL: "http://i3.ytimg.com/vi/gqOrQFween8/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gqOrQFween8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Real Youth")
        
        let vybz2 = PartyRock(imageURL: "http://i3.ytimg.com/vi/2vOVx1OWvuE/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=2vOVx1OWvuE", videoTitle: "Couldn't")
        let vybz3 = PartyRock(imageURL: "http://i3.ytimg.com/vi/z_nZL0hwObU/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=z_nZL0hwObU", videoTitle: "You Make Me Cry")
        let vybz4 = PartyRock(imageURL: "http://i3.ytimg.com/vi/y4FgAUBjnLE/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=y4FgAUBjnLE", videoTitle: "You Body Perfect")
        let vybz5 = PartyRock(imageURL: "http://i3.ytimg.com/vi/m81NVWbekiI/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=m81NVWbekiI", videoTitle: "Tell Me If You Like IT")
        let vybz6 = PartyRock(imageURL: "http://i3.ytimg.com/vi/piwkqKzxvB4/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=piwkqKzxvB4", videoTitle: "Party")
        let vybz7 = PartyRock(imageURL: "http://i3.ytimg.com/vi/mb9QlhTChuw/hqdefault.jpg", videoURL: "https://www.youtube.com/watch?v=mb9QlhTChuw", videoTitle: "Bay Bay")
        
        //Call these 2 functions when tableView loads
        tableView.delegate = self
        tableView.dataSource = self

    }

}

