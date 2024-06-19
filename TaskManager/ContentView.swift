//
//  ContentView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TaskViewModel()
    @State private var showingAddTaskView = false

    var body: some View {
        NavigationView {
            VStack {
                FilterView(viewModel: viewModel)
                TaskListView(viewModel: viewModel)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing: Button(action: {
                showingAddTaskView = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddTaskView) {
                TaskFormView(viewModel: viewModel)
            }
        }
    }
}


#Preview {
    ContentView()
}
