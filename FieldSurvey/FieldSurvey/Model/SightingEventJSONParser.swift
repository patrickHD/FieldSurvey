//
//  SightingEventJSONParser.swift
//  FieldSurvey
//
//  Created by Pat on 4/7/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import Foundation

class SightingEventJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [SightingEvent] {
        var sightingEvents = [SightingEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            if let sightings = root["sightings"] as? [Any]{
                for sighting in sightings{
                    if let sighting = sighting as? [String: String]{
                        if let classification = sighting["classification"],
                            let title = sighting["title"],
                            let description = sighting["description"],
                            let dateString = sighting["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let sightingEvent = SightingEvent(classification: classification, title: title, description: description, date: date){
                                sightingEvents.append(sightingEvent)
                            }
                        }
                    }
                }
            }
        }
        return sightingEvents
    }
}
