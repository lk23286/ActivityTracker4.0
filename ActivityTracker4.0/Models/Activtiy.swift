//
//  Activtiy.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import Foundation
import SwiftUI

struct Activity: Identifiable {
    
    let id: UUID
    var name: String
    var goal: Double
    var progress: Double
    var subActivities: [Activity]
    var arcThemeColor: ArcThemeColor
    
    var achievement: Int {
       Int( progress / goal * 100.0 )
    }

    init(id: UUID = UUID(), name: String, goal: Double, progress: Double, subActivities: [Activity] = [], arcTheme: ArcThemeColor) {
        self.id = id
        self.name = name
        self.goal = goal
        self.progress = progress
        self.subActivities = subActivities
        self.arcThemeColor = arcTheme
        
    }
}

extension Activity {
    
    struct Data {
        var name: String = ""
        var goal: Double = 1.0
        var progress: Double = 0.0
        var subActivities: [Activity] = []
        var arcThemeColor: ArcThemeColor = .lightGreenInk
        
    }
    
    var data: Data {
        Data(name: name, goal: goal, progress: progress, subActivities: subActivities, arcThemeColor: arcThemeColor)
    }
    
    mutating func update(from data:Data) {
        name = data.name
        goal = data.goal
        progress = data.progress
        subActivities = data.subActivities
        arcThemeColor = data.arcThemeColor
    }
    
    init(data:Data) {
        id = UUID()
        name = data.name
        goal = data.goal
        progress = data.progress
        subActivities = data.subActivities
        arcThemeColor = data.arcThemeColor
    }
    
}


extension Activity {
    

    static let lightSample: [Activity] = [
        Activity(name: "Swift", goal: 100, progress: 50, subActivities: [
            Activity(name: "Bible", goal: 60, progress: 45, arcTheme: ArcThemeColor.lightGreenInk),
            Activity(name: "Project", goal: 60, progress: 20, arcTheme: ArcThemeColor.lightBlueInk),
            Activity(name: "Udemy", goal: 90, progress: 50, arcTheme: ArcThemeColor.lightYellowInk),
            Activity(name: "Education", goal: 30, progress: 20, arcTheme: ArcThemeColor.lightGrayInk)
        ], arcTheme: ArcThemeColor.lightGreenInk),
        Activity(name: "Sport", goal: 100, progress: 60,subActivities: [
            Activity(name: "Swim", goal: 30, progress: 23, arcTheme: ArcThemeColor.lightBlueInk)
        ],arcTheme: ArcThemeColor.lightBlueInk),
        Activity(name: "Meditation", goal: 100, progress: 70, arcTheme: ArcThemeColor.lightYellowInk),
       // Activity(name: "Sleep", goal: 100, progress: 80, arcTheme: ArcThemeColor.lightYellowInk)
    
    ]
    static var lightSampleGoal: Goal {
        
        var tmpGoal = Goal()
        
        var sumMainGoal = 0.0
        var sumSubGoal: [Double] = [0, 0, 0, 0]
        var indice = 0
        
        for mainActivity in lightSample {
            
            sumMainGoal += mainActivity.goal
            indice = mainActivity.arcThemeColor.arcNumber
            
            if !mainActivity.subActivities.isEmpty {
                var tmpSubGoal = 0.0
                for subActivity in mainActivity.subActivities {
                    tmpSubGoal += subActivity.goal
                }
                sumSubGoal[indice] = tmpSubGoal
            }
        }
        return Goal(totalMax: Goal.initTotal - sumMainGoal, mainMax: sumMainGoal, mainMin: sumSubGoal, subMax: sumSubGoal)
    }
    
    
}



