//
//  RegistrationViewModel.swift
//  Insta
//
//  Created by Krishna on 18/07/23.
//

import Foundation


class RegistrationViewModel: ObservableObject {
    
    
    var userName: String = ""
    var userEmail: String = ""
    var password: String = ""
    
    func createUser() async throws {
     print("DEBUG: USER CRED \(userName) \(userEmail) \(password)")
            try await AuthServices.shared.createUser(email: userEmail, password: password, userName: userName)
        
    }
    
    
}
