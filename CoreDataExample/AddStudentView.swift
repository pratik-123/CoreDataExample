//
//  AddStudentView.swift
//  CoreDataExample
//
//  Created by Pratik Lad on 21/04/25.
//

import SwiftUI

struct AddStudentView: View {
        
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var editStudent: Student?
    var editedStudent: Student?
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name", text: $name)
                    .onAppear {
                        if let student = editedStudent {
                            name = student.name ?? ""
                        }
                    }
                Button("Save") {
                    
                    if let student = editedStudent {
                        student.name = name
                    } else {
                        let student = Student(context: managedObjectContext)
                        student.id = UUID()
                        student.name = name
                    }
                    try? managedObjectContext.save()
                    
                    dismiss()
                }
            }
            .navigationTitle(editedStudent != nil ? "Update Student" : "Add Student")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddStudentView()
}
