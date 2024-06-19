# TaskManager

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Task Manager is a simple task management application built with SwiftUI. It allows users to create, update, and delete tasks, as well as filter them by their status. The app is designed to be responsive and user-friendly, making task management easy and efficient.

## Features

- Add new tasks with a title and description.
- Update the status of tasks.
- Delete tasks.
- Filter tasks by status: "All", "To Do", "In Progress", "Done".
- Form validation to ensure tasks cannot be created without a title.
- Responsive design for both desktop and mobile devices.
- Basic error handling.

## Requirements

- macOS with Xcode installed.
- Swift 5.0 or later.
- iOS 15.0 or later for running the application on a device or simulator.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/TaskManager.git
   cd TaskManager
   ```
2. Open the project in Xcode:
    ```sh
    open TaskManager.xcodeproj
    ```
## Screenshot
    - Task List View
    ![Task List View](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Task-List-View.png)
    
    - Task List View - Todo
    ![Task List View](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Task-List-View-Todo.png)
    
    - Task List View - Done
    ![Task List View](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Task-List-View-Done.png)
    
    - Task List View - Options
    ![Task List View](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Task-List-options.png)
    
    - Task Form View - Form
    ![Task Form View](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Task-Form-View.png)

Task Form View

## Project Structure

```bash
TaskManager/
├── TaskManagerApp.swift      # Main application entry point
├── Models/
│   └── Task.swift            # Task model definition
├── ViewModels/
│   └── TaskViewModel.swift   # Task ViewModel
├── Views/
│   ├── ContentView.swift     # Main view combining all components
│   ├── TaskListView.swift    # View to list tasks
│   ├── TaskFormView.swift    # View to create a new task
│   ├── TaskRowView.swift     # Row view for individual task
│   └── FilterView.swift      # View to filter tasks by status
├── TaskManagerTests/
│   └── TaskManagerTests.swift # Unit tests for the application
└── Resources/
    └── Assets.xcassets       # Image assets
```

## Documenation

To generate documentation of project
    - Perform Product -> Build Documenation
    ![Documentation Picture](https://github.com/deviatorrocks/TaskManager/blob/develop/Screenshots/Documentation.png)   

