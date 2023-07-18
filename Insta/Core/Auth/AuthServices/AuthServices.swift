//
//  AuthServices.swift
//  Insta
//
//  Created by Krishna on 18/07/23.
//

import Foundation
import FirebaseAuth


class AuthServices {
    
    
    static let shared = AuthServices()
    
    @Published var userSession: FirebaseAuth.User?
    
    private init() {
        userSession = Auth.auth().currentUser
    }
    
    
    @MainActor
    func createUser(email: String, password: String, userName: String) async throws {
        
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            userSession = result.user
        }catch {
            print("DEBUG: create user error ",error.localizedDescription)
        }
    }
    
    
    @MainActor
    func loginUser(email: String, password: String) async throws {
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            userSession = result.user
        }catch {
            print("DEBUG: create user error ",error.localizedDescription)
        }
    }
    
    
    func signOut() async throws {
        try await Auth.auth().signOut()
    }
    
    
}
