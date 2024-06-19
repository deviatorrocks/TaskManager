//
//  FilterView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI

struct FilterView: View {
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        Picker("Filter", selection: $viewModel.filter) {
            Text("All").tag(TaskStatus?.none)
            ForEach(TaskStatus.allCases) { status in
                Text(status.rawValue).tag(TaskStatus?.some(status))
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
