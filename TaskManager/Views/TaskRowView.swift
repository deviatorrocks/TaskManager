//
//  TaskRowView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//
import SwiftUI

struct TaskRowView: View {
    var task: Task
    @ObservedObject var viewModel: TaskViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.title).font(.headline)
                Text(task.description).font(.subheadline)
            }
            Spacer()
            Picker("Status", selection: $viewModel.tasks[viewModel.tasks.firstIndex(where: { $0.id == task.id })!].status) {
                ForEach(TaskStatus.allCases) { status in
                    Text(status.rawValue).tag(status)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}
