//
//  CustomCell_2.swift
//  NibPracticeForTableViewCell
//
//  Created by Michelle Grover on 2/26/21.
//

import UIKit

class CustomCell_2: UITableViewCell {
    
    
    @IBOutlet weak var customImageView2: UIImageView!
    
    @IBOutlet weak var customLabel2: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
