//
//  DailyScrum.swift
//  ScrumdingerDemo
//
//  Created by alvaro on 5/04/22.
//

import Foundation

struct DailyScrum: Identifiable{
    let id: UUID
    var title: String
    var attendees:[Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        
    }
}

extension DailyScrum{
    struct Attendee: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name:String){
            self.id = id
            self.name = name
        }
    }
    struct Data {
        var title : String = ""
        var attendees : [Attendee] = []
        var legnthInMinutes : Double = 5
        var theme : Theme = .seafoam
    }
    var data : Data {
        Data(title: title, attendees: attendees, legnthInMinutes: Double(lengthInMinutes),theme: theme)
    }
}

extension DailyScrum{
    static let sampledata: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy","Daisy","Simon","Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Web Dev", attendees: ["Katie","Gray","Euna", "Luis","Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "App Dev", attendees: ["Chella","Chris","Christina","Eden","Karla","Lindsey","Aga","Chad","Jenn","Sarah"], lengthInMinutes: 5, theme: .poppy)
    ]
}




