//
//  TodoListItemViewViewModel.swift
//  TodoListApp
//
//  Created by Alek Kaluza on 1/30/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

// ViewModel for a single Todo list item view (each row in items list)
class TodoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        // Create copy as item is constant and immutable
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
