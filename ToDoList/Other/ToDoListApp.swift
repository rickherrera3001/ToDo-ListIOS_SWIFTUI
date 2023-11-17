//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ricardo Developer on 02/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
