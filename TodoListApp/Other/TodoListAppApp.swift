//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by Alek Kaluza on 1/29/24.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
