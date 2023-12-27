//
//  User.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
