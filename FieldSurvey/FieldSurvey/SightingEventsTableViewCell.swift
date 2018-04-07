//
//  SightingEventsTableViewCell.swift
//  FieldSurvey
//
//  Created by Pat on 4/7/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class SightingEventsTableViewCell: UITableViewCell {

    @IBOutlet weak var classIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
