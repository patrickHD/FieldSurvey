//
//  SightingEventDetailViewController.swift
//  FieldSurvey
//
//  Created by Pat on 4/7/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class SightingEventDetailViewController: UIViewController {
    
    var sightingEvent: SightingEvent?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var classIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var describtionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        classIconImageView.image = sightingEvent?.classification.image
        titleLabel.text = sightingEvent?.title
        describtionText.text = sightingEvent?.description
        if let date = sightingEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        self.title = "Observation"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
