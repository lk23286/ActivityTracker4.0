//
//  Goal.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import Foundation

struct Goal {
    static var initTotal: Double = 24 * 60
    
    var totalMax: Double = 0
    var mainMax: Double = 0
    var mainMin: [Double] = []
    var subMax: [Double] = []
    var subMin: Double = 1
}

struct CoreData {
    var activites: [Activity]
    var initTime:Double = 24 * 60
    
    var goals: Goals {
        var sumOfMains = 0.0
        var sumOfMainsSubs: [Double] = [0,0,0,0]
        var indice = 0
        
        for mainActivity in activites {
            sumOfMains += mainActivity.goal
            var sumSubGoal = 0.0
            
            if !mainActivity.subActivities.isEmpty {
                
                for subActivity in mainActivity.subActivities {
                    sumSubGoal += subActivity.goal
                }
                indice = mainActivity.arcThemeColor.arcNumber
                sumOfMainsSubs[indice] = sumSubGoal
            }
            
        }
        return Goals(sumOfMains: sumOfMains, sumOfMainsSubs: sumOfMainsSubs)
    }
    
    var availableTimeForMainGoal: Double {
        initTime - goals.sumOfMains
    }
    
    var avaialbleTimeForMainsSubGoal: [Double] {
        var tmp: [Double] = [0,0,0,0]
        var indice = 0
        for activity in activites {
            indice = activity.arcThemeColor.arcNumber
            
            tmp[indice] = activity.goal - goals.sumOfMainsSubs[indice]
        }
        return tmp
    }
}

struct Goals {
    var sumOfMains: Double
    var sumOfMainsSubs: [Double]
}

