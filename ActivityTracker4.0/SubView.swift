//
//  SubView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct SubView: View {
    
    @Binding var subActivities: [Activity]
    @Binding var mainActivityName: String
    
    var body: some View {
        
        VStack {
            List {
                ForEach($subActivities) { $subActivity in

                    
                    
                    NavigationLink(destination: CounterView(progress: $subActivity.progress)) {
                        
                        
                        
                        MainHeaderView(activity: $subActivity)
                    }
                    
                    .listRowBackground(subActivity.arcThemeColor.paperColor)

                }
            }
            MainDiagramView(activities: subActivities)
            MainFooterView(activities: subActivities)
        }
        .background(Color(K.backgroundGray))
        .navigationTitle(mainActivityName)
    }
        
}

struct SubView_Previews: PreviewProvider {
    
    static var exampleActivity = Activity.lightSample[0]
    
    static var previews: some View {
        
        NavigationView {
            SubView(subActivities: .constant(Activity.lightSample[0].subActivities), mainActivityName: .constant(Activity.lightSample[0].name))
            
    
        }
        
        
    }
}

