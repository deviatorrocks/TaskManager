//
//  TaskListView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI
struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.filteredTasks()) { task in
                TaskRowView(task: task, viewModel: viewModel)
            }
            .onDelete { indexSet in
                indexSet.forEach { index in
                    viewModel.deleteTask(task: viewModel.filteredTasks()[index])
                }
            }
        }
    }
}
