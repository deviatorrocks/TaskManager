//
//  Task.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//
import Foundation

/// An enumeration representing the status of a task.
enum TaskStatus: String, CaseIterable, Identifiable {
    /// Task is yet to be started.
    case toDo = "To Do"
    /// Task is currently in progress.
    case inProgress = "In Progress"
    /// Task is completed.
    case done = "Done"
    
    /// Unique identifier for each task status.
    var id: String { self.rawValue }
}

/// A struct representing a task in the task manager.
struct Task: Identifiable {
    /// Unique identifier for the task.
    let id: UUID
    /// Title of the task.
    var title: String
    /// Description of the task.
    var description: String
    /// Status of the task.
    var status: TaskStatus
}

