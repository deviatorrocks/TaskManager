//
//  TaskViewModel.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import Foundation

/// A view model for managing tasks in the task manager application.
class TaskViewModel: ObservableObject {
    /// A published array of tasks.
    @Published var tasks: [Task] = []
    
    /// An optional filter for the task status.
    @Published var filter: TaskStatus? = nil
    
    /// Adds a new task to the task list.
    ///
    /// - Parameters:
    ///   - title: The title of the new task.
    ///   - description: The description of the new task.
    func addTask(title: String, description: String) {
        let newTask = Task(id: UUID(), title: title, description: description, status: .toDo)
        tasks.append(newTask)
    }
    
    /// Updates the status of an existing task.
    ///
    /// - Parameters:
    ///   - task: The task to be updated.
    ///   - status: The new status to be assigned to the task.
    func updateTaskStatus(task: Task, status: TaskStatus) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].status = status
        }
    }
    
    /// Deletes an existing task from the task list.
    ///
    /// - Parameter task: The task to be deleted.
    func deleteTask(task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
    
    /// Returns a list of tasks filtered by the current filter status.
    ///
    /// - Returns: An array of tasks filtered by the specified status, or all tasks if no filter is set.
    func filteredTasks() -> [Task] {
        if let filter = filter {
            return tasks.filter { $0.status == filter }
        }
        return tasks
    }
}

