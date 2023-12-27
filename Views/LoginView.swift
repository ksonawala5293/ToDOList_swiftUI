//
//  LoginView.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //header
                HeaderView(title: "To DO List", subtitle: "Get Things Done!", angle: 15, backgroundColor: .pink)
                
                //form
                Form {
                    if !viewModel.errorMsg.isEmpty {
                        Text(viewModel.errorMsg)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Password", text: $viewModel.password)
                    
                    TLButton(title: "Login", backgroundColor: .blue) {
                        //attempt login
                        viewModel.login()
                    }
                }
                
                //navigation links
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
