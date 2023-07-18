//
//  ContentView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    @StateObject var regViewModel: RegistrationViewModel = RegistrationViewModel()
    
    var body: some View {
        
        
        
        if let _ = viewModel.userSession {
            MainTabbarView()
        }else{
            LoginView()
                .environmentObject(regViewModel)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
