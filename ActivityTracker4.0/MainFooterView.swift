//
//  MainFooterView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI


struct MainFooterView: View {
    
    
    var activities: [Activity]
    
    var body: some View {
        
        List {
                ForEach(activities) { activity in
                   MainFooterViewLine(activity: activity)
                        .listRowBackground(activity.arcThemeColor.paperColor)
                }
           
        }
        


            
    }
}

struct MainFooterView_Previews: PreviewProvider {
    
    static var activities: [Activity] = Activity.lightSample
    
    static var previews: some View {
        MainFooterView(activities: activities)
    }
}
