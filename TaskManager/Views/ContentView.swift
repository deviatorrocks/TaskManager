//
//  ContentView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI

/// The main content view for the task manager application.
struct ContentView: View {
    /// The view model for managing tasks.
    @ObservedObject var viewModel = TaskViewModel()
    /// A state variable to control the display of the add task view.
    @State private var showingAddTaskView = false

    var body: some View {
        NavigationView {
            VStack {
                /// The view for filtering tasks by status.
                FilterView(viewModel: viewModel)
                /// The view for displaying the list of tasks.
                TaskListView(viewModel: viewModel)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing: Button(action: {
                showingAddTaskView = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddTaskView) {
                /// The view for adding a new task.
                TaskFormView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
