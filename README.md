# Core Data CRUD App in SwiftUI - Demo Project

This project demonstrates a simple yet functional Core Data application built using SwiftUI. It showcases the fundamental CRUD (Create, Read, Update, Delete) operations for managing a list of "Students".

**Video Tutorial:** [https://youtu.be/R16y3QGtTXY]

This README provides an overview of the project structure and how to run it. For a detailed, step-by-step explanation of the code and concepts, please refer to the video tutorial linked above.

## Project Overview

This application allows users to:

* **Create:** Add new students to the persistent store.
* **Read:** View a list of all saved students.
* **Update:** Edit the names of existing students.
* **Delete:** Remove students from the list and the persistent store.

The project utilizes:

* **SwiftUI:** For building the user interface declaratively.
* **Core Data:** Apple's framework for managing persistent data.

## Running the Project

1.  **Prerequisites:**
    * macOS with Xcode installed (version 13 or later recommended).
    * Basic understanding of Swift and Xcode.

2.  **Download the Project:**
    * If you have the project files locally, proceed to the next step.
    * If this is a repository, clone it to your local machine using Git:
        ```bash
        git clone https://github.com/pratik-123/CoreDataExample.git
        cd CoreDataExample
        ```

3.  **Open in Xcode:**
    * Locate the `CoreDataExample.xcodeproj` file in the project directory.
    * Double-click the file to open it in Xcode.

4.  **Build and Run:**
    * Select a simulator or connect a physical iOS device in Xcode.
    * Press the "Play" button (Run) in the Xcode toolbar (or use the `Cmd + R` shortcut).
    * The application should build and launch on your selected simulator or device.

## Project Structure

The project typically includes the following key files and folders:

* `CoreDataExample.xcodeproj`: The Xcode project file.
* `CoreDataExample/`: The main source code directory.
    * `CoreDataExampleApp.swift`: The entry point of the application.
    * `ContentView.swift`: The main view displaying the list of students and the add button.
    * `AddStudentView.swift`: The view for adding new students or editing existing ones.
    * `Database.xcdatamodeld`: The Core Data data model file. This defines the entities (like `Student`) and their attributes.
    * `Student+CoreDataClass.swift`: Generated Swift code for your Core Data entities.
    * `Student+CoreDataProperties.swift`: Generated Swift code defining the properties of your Core Data entities.

## Key Concepts Demonstrated

This project demonstrates the following Core Data concepts within a SwiftUI application:

* **Setting up the Core Data Stack:** Initializing the `NSPersistentContainer` and providing the `managedObjectContext` to the SwiftUI environment.
* **Creating Entities:** Defining data structures (like the `Student` entity with `name` and `id` attributes) in the Data Model editor.
* **Fetching Data (`@FetchRequest`):** Using SwiftUI's `@FetchRequest` property wrapper to automatically fetch and observe data from Core Data.
* **Creating New Objects:** Instantiating new managed objects and saving them to the persistent store.
* **Updating Objects:** Modifying the attributes of existing managed objects and saving the changes.
* **Deleting Objects:** Removing managed objects from the context and the persistent store.
* **Managing the `managedObjectContext`:** Understanding how to access and save changes to the Core Data context.
