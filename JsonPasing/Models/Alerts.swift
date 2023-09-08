//
//  Alerts.swift
//  JsonPasing
//
//  Created by Геник Мурадян on 08.09.2023.
//

enum Alert {
    case success
    case failed
    
    var title: String {
        switch self {
        case .success:
            return "Success"
        case .failed:
            return "Failed"
        }
    }
    
    var message: String {
        switch self {
        case .success:
            return "You can see the result in the debug area."
        case .failed:
            return "You can see error in the debug area."
        }
    }
}
