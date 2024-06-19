//
//  TaskFormView.swift
//  TaskManager
//
//  Created by apple on 19/06/24.
//
import SwiftUI

struct TaskFormView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: TaskViewModel
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Task Details")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
                
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
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Title cannot be empty"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

