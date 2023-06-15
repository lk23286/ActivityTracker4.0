//
//  ErrorWrapper.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}

enum ActivityErrors: Error {
    case reachedMaxActivities
}

extension ErrorWrapper {
    static let basicErrors: [ErrorWrapper] = [
        ErrorWrapper(error: ActivityErrors.reachedMaxActivities, guidance: "Can't add more activities")]
}

