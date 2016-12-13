//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Roydon Jeffrey on 12/7/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet var videoPreviewImage: UIImageView!
    
    @IBOutlet var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //Update the TableViewCell with new data each time it is recycled. Takes a parameter of type PartyRock from the model
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        //Do expensive task on the background thread
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                //Now, bring expensive task to the main thread to affect UI
                DispatchQueue.main.async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
                
            }catch {
                print(error.localizedDescription)
            }
        }
    }

}
