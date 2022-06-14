//
//  ScreenTableViewCell.swift
//  wanderfulindonesia
//
//  Created by Armstrong on 14/06/22.
//

import UIKit

class ScreenTableViewCell: UITableViewCell {

    @IBOutlet var rowImageView: UIImageView!
    @IBOutlet var rowLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
