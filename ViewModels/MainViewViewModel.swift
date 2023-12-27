//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentuserID: String = ""
        
    init() {
        Auth.auth().addStateDidChangeListener {[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentuserID = user?.uid ?? ""
            }            
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
