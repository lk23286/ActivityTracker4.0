//
//  ActivityTracker4_0App.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

@main
struct ActiviityTracker2App: App {
    
    
    @State private var activities = Activity.lightSample
    @State private var goal = Goal()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView(activities: $activities, goal: $goal)
            }
          
        }
    }
}
