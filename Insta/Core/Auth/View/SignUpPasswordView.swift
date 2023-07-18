//
//  SignUpPasswordView.swift
//  Insta
//
//  Created by Krishna on 15/07/23.
//

import SwiftUI

struct SignUpPasswordView: View {
     
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var regViewModel: RegistrationViewModel
    
    var body: some View {
        VStack{
            
            
            Text("Create a password")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.vertical)
            
            Text("Password should be atleast 8 charecters in length.")
                .font(.footnote)
                .padding(.horizontal)
            SecureField("Password", text: $regViewModel.password)
                .modifier(IGCTextModifier())
                .padding(.vertical)
            NavigationLink {
                SignUpCompletionView()
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

struct SignUpPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPasswordView()
    }
}
