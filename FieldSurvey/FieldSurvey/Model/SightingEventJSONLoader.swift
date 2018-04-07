//
//  SightingEventJSONLoader.swift
//  FieldSurvey
//
//  Created by Pat on 4/7/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import Foundation

class SightingEventsJSONLoader{
    class func load(fileName: String) -> [SightingEvent]{
        var events = [SightingEvent]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            events = SightingEventJSONParser.parse(data)
        }
        return events
    }
}