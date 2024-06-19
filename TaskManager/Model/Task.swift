//
//  Task.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import Foundation

enum TaskStatus: String, CaseIterable, Identifiable {
    case toDo = "To Do"
    case inProgress = "In Progress"
    case done = "Done"
    
    var id: String { self.rawValue }
}

struct Task: Identifiable {
    let id: UUID
    var title: String
    var description: String
    var status: TaskStatus
}
