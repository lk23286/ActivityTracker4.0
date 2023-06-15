//
//  ArchThemeColor.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import Foundation
import SwiftUI

enum ArcThemeColor: String, CaseIterable, Identifiable {
    
    case lightGreenInk
    case lightBlueInk
    case lightYellowInk
    case lightGrayInk
    
    var inkColor: Color {
        Color(rawValue)
    }
    
    var paperColor: Color {
        let color:Color
        switch self {
        case .lightGreenInk :
            color = ThemeColor.lightGreenPaper.color
        case .lightBlueInk :
            color = ThemeColor.lightBluePaper.color
        case .lightYellowInk :
            color = ThemeColor.lightYellowPaper.color
        case .lightGrayInk :
            color = ThemeColor.lightGrayPaper.color
        }
        return color
    }
    
    var arcNumber: Int {
        let number: Int
        switch self {
        case .lightGreenInk :
            number = 1
        case .lightBlueInk :
            number = 2
        case .lightYellowInk :
            number = 3
        case .lightGrayInk :
            number = 4
        }
        return number
    }
    
    var name: String {
        rawValue
        
    }
    var id: String {
        name
    }
}

enum ThemeColor: String, CaseIterable, Identifiable {
    
    case lightGreenInk
    case lightGreenPaper
    case lightBlueInk
    case lightBluePaper
    case lightYellowInk
    case lightYellowPaper
    case lightGrayInk
    case lightGrayPaper
    
    case  darkGreenInk
    case  darkGreenPaper
    case  darkBlueInk
    case  darkBluePaper
    case  darkYellowInk
    case  darkYellowPaper
    case  darkGrayInk
    case  darkGrayPaper
    
    var color: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue
    }
    var id: String {
        name
    }
}

struct K {
    static var backgroundGray = "bkgGray"
}


