//
//  TaskFormView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//
import SwiftUI

/// A view for adding a new task.
struct TaskFormView: View {
    /// The presentation mode environment variable for dismissing the view.
    @Environment(\.presentationMode) var presentationMode
    /// The view model for managing tasks.
    @ObservedObject var viewModel: TaskViewModel
    /// The state variable for the task title input.
    @State private var title: String = ""
    /// The state variable for the task description input.
    @State private var description: String = ""
    /// The state variable for controlling the display of the alert.
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Task Details")) {
                    /// TextField for entering the task title.
                    TextField("Title", text: $title)
                    /// TextField for entering the task description.
                    TextField("Description", text: $description)
                }
                
                /// Button for adding the task.
                Button("Add Task") {
                    if title.isEmpty {
                        showAlert = true
                    } else {
                        viewModel.addTask(title: title, description: description)
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
            .navigationBarTitle("New Task", displayMode: .inline)
            /// Alert displayed when the task title is empty.
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Title cannot be empty"), dismissButton: .default(Text("OK")))
            }
        }
    }
}
