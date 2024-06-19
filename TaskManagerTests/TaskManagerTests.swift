//
//  TaskManagerTests.swift
//  TaskManagerTests
//
//  Created by apple on 19/06/24.
//
import XCTest
@testable import TaskManager

class TaskManagerTests: XCTestCase {

    var viewModel: TaskViewModel!
    
    override func setUpWithError() throws {
        viewModel = TaskViewModel()
    }

    func testAddTask() throws {
        viewModel.addTask(title: "Test Task", description: "Test Description")
        XCTAssertEqual(viewModel.tasks.count, 1)
        XCTAssertEqual(viewModel.tasks.first?.title, "Test Task")
    }

    func testUpdateTaskStatus() throws {
        let task = Task(id: UUID(), title: "Test Task", description: "Test Description", status: .toDo)
        viewModel.tasks.append(task)
        viewModel.updateTaskStatus(task: task, status: .done)
        XCTAssertEqual(viewModel.tasks.first?.status, .done)
    }

    func testDeleteTask() throws {
        let task = Task(id: UUID(), title: "Test Task", description: "Test Description", status: .toDo)
        viewModel.tasks.append(task)
        viewModel.deleteTask(task: task)
        XCTAssertTrue(viewModel.tasks.isEmpty)
    }

    func testFilteredTasks() throws {
        let task1 = Task(id: UUID(), title: "Task 1", description: "Description 1", status: .toDo)
        let task2 = Task(id: UUID(), title: "Task 2", description: "Description 2", status: .done)
        viewModel.tasks.append(contentsOf: [task1, task2])
        viewModel.filter = .done
        XCTAssertEqual(viewModel.filteredTasks().count, 1)
        XCTAssertEqual(viewModel.filteredTasks().first?.title, "Task 2")
    }
}
