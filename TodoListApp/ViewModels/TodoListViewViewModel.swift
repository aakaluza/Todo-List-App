//
//  TodoListViewViewModel.swift
//  TodoListApp
//
//  Created by Alek Kaluza on 1/30/24.
//

import FirebaseFirestore
import Foundation

// ViewModel for List of Items
// Primary tab
class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
