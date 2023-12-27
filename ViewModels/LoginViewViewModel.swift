//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        
        //login
        Auth.auth().signIn(withEmail: email, password: password)        
    }
    
    private func validate() -> Bool {
        errorMsg = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMsg = "Please fill in all the fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Please enter valid email"
            return false
        }
        
        return true
    }
}
