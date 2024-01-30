//
//  User.swift
//  TodoListApp
//
//  Created by Alek Kaluza on 1/30/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
