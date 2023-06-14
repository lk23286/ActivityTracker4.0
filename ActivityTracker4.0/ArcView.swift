//
//  ArcView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct ArcView: View {
    
    var achivement: Int
    var archThemeColor: ArcThemeColor

    var body: some View {
        
        DiagramArc(number: archThemeColor.arcNumber, percent: 100)
            .stroke(archThemeColor.paperColor, lineWidth: 22)
            //.brightness(0.0)
            //.opacity(archThemeColor.opacity)
           
            .overlay {
                DiagramArc(number: archThemeColor.arcNumber, percent: achivement)
                    .rotation(Angle(degrees: -90))
                    .stroke(archThemeColor.inkColor, lineWidth: 22)
            }
    }
}

struct ArcView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ArcView( achivement: 30, archThemeColor: ArcThemeColor.lightYellowInk)
    }
}
