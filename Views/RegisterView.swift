//
//  RegisterView.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            //header
            HeaderView(title: "Register", subtitle: "Start organizing Todos", angle: -15, backgroundColor: .orange)
            
            //form
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                
                SecureField("Password", text: $viewModel.password)
                
                TLButton(title: "Create Account", backgroundColor: .green) {
                    //attempt login
                    viewModel.createAccount()
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
