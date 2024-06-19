//
//  FilterView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI

/// A view for filtering tasks by their status.
struct FilterView: View {
    /// The view model for managing tasks.
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        /// Picker for selecting the filter status.
        Picker("Filter", selection: $viewModel.filter) {
            /// Option to show all tasks.
            Text("All").tag(TaskStatus?.none)
            /// Options to filter tasks by their individual statuses.
            ForEach(TaskStatus.allCases) { status in
                Text(status.rawValue).tag(TaskStatus?.some(status))
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
