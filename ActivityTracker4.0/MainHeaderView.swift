//
//  MainHeaderView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//


import SwiftUI

struct MainHeaderView: View {
    @Binding var activity: Activity
    
    var body: some View {
        Text(activity.name)
            .font(.title2)
            .foregroundColor(activity.arcThemeColor.inkColor)
            .fontWeight(.bold)
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainHeaderView(activity: .constant(Activity.lightSample[0]))
    }
}

