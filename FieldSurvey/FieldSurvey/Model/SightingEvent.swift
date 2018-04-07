//
//  SightingEvent.swift
//  FieldSurvey
//
//  Created by Pat on 4/7/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import Foundation

struct SightingEvent {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification:String, title:String, description:String, date:Date){
        if let classification = Classification(rawValue: classification){
            self.init(classification: classification, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}

