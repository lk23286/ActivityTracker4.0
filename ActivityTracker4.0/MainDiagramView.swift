//
//  MainDiagramView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct MainDiagramView: View {
    var activities: [Activity]
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 0)
            .background(Color(K.backgroundGray)
            )
            .overlay {
                ForEach(activities) { activity in
                    ArcView(achivement: activity.achievement, archThemeColor: activity.arcThemeColor)
                }
            }
            .background(Color(K.backgroundGray))
    }
}

struct MainDiagramView_Previews: PreviewProvider {
    static var previews: some View {
        MainDiagramView(activities: Activity.lightSample)
    }
}
