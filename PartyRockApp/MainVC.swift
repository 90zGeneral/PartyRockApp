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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "SelectedVideo", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vybz1 = PartyRock(imageURL: "http://i3.ytimg.com/vi/6U3ojmzAgUo/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6U3ojmzAgUo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bet Mi Money")
        let vybz2 = PartyRock(imageURL: "http://i3.ytimg.com/vi/2vOVx1OWvuE/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2vOVx1OWvuE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Couldn't")
        let vybz3 = PartyRock(imageURL: "http://i3.ytimg.com/vi/z_nZL0hwObU/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z_nZL0hwObU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "You Make Me Cry")
        let vybz4 = PartyRock(imageURL: "http://i3.ytimg.com/vi/y4FgAUBjnLE/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y4FgAUBjnLE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "You Body Perfect")
        let vybz5 = PartyRock(imageURL: "http://i3.ytimg.com/vi/m81NVWbekiI/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/m81NVWbekiI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Tell Me If You Like IT")
        let vybz6 = PartyRock(imageURL: "http://i3.ytimg.com/vi/-8KDvdh9C1Y/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-8KDvdh9C1Y\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mile High Club")
        let vybz7 = PartyRock(imageURL: "http://i3.ytimg.com/vi/mb9QlhTChuw/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mb9QlhTChuw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bay Bay")
        
        
        //Populate the array for which the tableView gets its data from
        partyRocks.append(vybz1)
        partyRocks.append(vybz2)
        partyRocks.append(vybz3)
        partyRocks.append(vybz4)
        partyRocks.append(vybz5)
        partyRocks.append(vybz6)
        partyRocks.append(vybz7)
        
        
        //Call these 2 functions when tableView loads
        tableView.delegate = self
        tableView.dataSource = self
        
        //Reload the tableView whenever the view loads
        tableView.reloadData()

    }

}

