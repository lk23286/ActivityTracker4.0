//
//  MainFooterViewLine.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct MainFooterViewLine: View {
    
    var activity: Activity
    
    private var name: String { activity.name }
    private var goal: String { String(Int(activity.goal)) }
    private var progress: String { String(Int(activity.progress)) }
    private var achievment: String { String(activity.achievement)}
    
   
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 11.0, content: {
            Text(name)
            Text(progress)
            Text("/")
            Text(goal)
            Text("min")
            Text("\(achievment) %")
               
        }) .padding(.leading, 0.0)
            .foregroundColor(activity.arcThemeColor.inkColor)
            .font(.headline)
            .fontWeight(.bold)
            
    }
        
}

struct MainFooterViewLine_Previews: PreviewProvider {
    
    static let activity: Activity = Activity.lightSample[0]
    
    
    static var previews: some View {
        MainFooterViewLine(activity: activity)
    }
}
