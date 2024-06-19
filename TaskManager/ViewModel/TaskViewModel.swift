//
//  TaskViewModel.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    @Published var filter: TaskStatus? = nil
    
    func addTask(title: String, description: String) {
        let newTask = Task(id: UUID(), title: title, description: description, status: .toDo)
        tasks.append(newTask)
    }
    
    func updateTaskStatus(task: Task, status: TaskStatus) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].status = status
        }
    }
    
    func deleteTask(task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
    
    func filteredTasks() -> [Task] {
        if let filter = filter {
            return tasks.filter { $0.status == filter }
        }
        return tasks
    }
}
