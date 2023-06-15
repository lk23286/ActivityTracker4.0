//
//  DiagramArc.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import Foundation
import SwiftUI

struct DiagramArc: Shape {
    
    let number: Int
    let percent: Int
    var diagramRadius = 0.0
    var arcWidth: Int = 1
    
    private var startAngle: Angle { Angle(degrees: 0.0) }
    private var endAngle: Angle { Angle(degrees: Double(percent) * 3.6) }
    private var diameterModifier: Double {
        1.25 - Double(number) * 0.25
    }
    
    func path(in rect: CGRect) -> Path {
        let diameter = min(rect.size.width, rect.size.height) - 35
        let radius = ( diameter * diameterModifier) / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}
