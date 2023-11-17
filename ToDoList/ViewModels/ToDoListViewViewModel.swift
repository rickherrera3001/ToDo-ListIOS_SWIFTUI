//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Ricardo Developer on 07/11/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// ViewModel for list of item view
/// Primary Tab

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: id item to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
