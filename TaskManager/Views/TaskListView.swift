//
//  TaskListView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI

/// A view for displaying the list of tasks.
struct TaskListView: View {
    /// The view model for managing tasks.
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        List {
            /// Iterates over the filtered tasks and displays each task using `TaskRowView`.
            ForEach(viewModel.filteredTasks()) { task in
                TaskRowView(task: task, viewModel: viewModel)
            }
            .onDelete { indexSet in
                indexSet.forEach { index in
                    /// Deletes the task at the specified index.
                    viewModel.deleteTask(task: viewModel.filteredTasks()[index])
                }
            }
        }
    }
}
