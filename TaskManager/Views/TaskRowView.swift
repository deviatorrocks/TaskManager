//
//  TaskRowView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//
import SwiftUI

/// A view representing a single task row in the task list.
struct TaskRowView: View {
    /// The task to be displayed.
    var task: Task
    /// The view model for managing tasks.
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                /// Displays the title of the task.
                Text(task.title).font(.headline)
                /// Displays the description of the task.
                Text(task.description).font(.subheadline)
            }
            Spacer()
            /// Picker for updating the status of the task.
            Picker("Status", selection: $viewModel.tasks[viewModel.tasks.firstIndex(where: { $0.id == task.id })!].status) {
                ForEach(TaskStatus.allCases) { status in
                    Text(status.rawValue).tag(status)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}
