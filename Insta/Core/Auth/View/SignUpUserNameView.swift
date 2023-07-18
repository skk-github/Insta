//
//  SignUpUserNameView.swift
//  Insta
//
//  Created by Krishna on 15/07/23.
//

import SwiftUI

struct SignUpUserNameView: View {
     
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var regViewModel: RegistrationViewModel
    
    var body: some View {
        VStack{
            
            
            Text("Create User name")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.vertical)
            
            Text("Pick a user name for your account. It can be changed later.")
                .font(.footnote)
                .padding(.horizontal)
            TextField("UserName", text: $regViewModel.userName)
                .autocapitalization(.words)
                .modifier(IGCTextModifier())
                .padding(.vertical)
            NavigationLink {
                SignUpPasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .modifier(IGCButtonModifier())
            }
            
            Spacer()
            
                
        }
        
        .toolbar {
            ToolbarItem (placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .frame(width: 30)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct SignUpUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpUserNameView()
    }
}
