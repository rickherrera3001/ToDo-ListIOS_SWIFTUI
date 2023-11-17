//
//  User.swift
//  ToDoList
//
//  Created by Ricardo Developer on 07/11/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
