//
//  LoginView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Email Address", text: $email)
                TextField("Password", text: $password)
            }
            .navigationTitle("Login Page")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
