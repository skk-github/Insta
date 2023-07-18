//
//  ContentViewModel.swift
//  Insta
//
//  Created by Krishna on 18/07/23.
//

import Foundation
import FirebaseAuth
import Combine


class ContentViewModel: ObservableObject {
    
    let authServices = AuthServices.shared
    
    var cancellable =  Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        authServices.$userSession.assign(to: \.userSession, on: self)
            .store(in: &cancellable)
    }

    
}
