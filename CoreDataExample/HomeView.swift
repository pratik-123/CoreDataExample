//
//  HomeView.swift
//  CoreDataExample
//
//  Created by Pratik Lad on 21/04/25.
//

import SwiftUI

struct HomeView: View  {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>
    
    @State private var showAddScreen = false
    @State private var editStudent: Student?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(students, id: \.id) { student in
                    Button {
                        editStudent = student
                    } label: {
                        Text(student.name ?? "")
                    }
                }
                .onDelete(perform: deleteStudent)
            }
            .navigationTitle("Students")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        editStudent = nil
                        showAddScreen = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .sheet(isPresented: $showAddScreen) {
                AddStudentView()
                    .environment(\.managedObjectContext, managedObjectContext)
            }
            .sheet(item: $editStudent) { student in
                AddStudentView(editedStudent: student)
                    .environment(\.managedObjectContext, managedObjectContext)
            }
        }
    }
    
    func deleteStudent(at offsets: IndexSet) {
        offsets.forEach { index in
            let obj = students[index]
            managedObjectContext.delete(obj)
        }
        try? managedObjectContext.save()
    }
}

#Preview {
    HomeView()
}
