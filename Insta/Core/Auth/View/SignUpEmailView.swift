//
//  SignUpEmailView.swift
//  Insta
//
//  Created by Krishna on 14/07/23.
//

import SwiftUI

struct SignUpEmailView: View {
    
    @State var email: String = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            
            
            Text("Add your email")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.vertical)
            
            Text("This email will be used to sign in")
                .font(.footnote)
            TextField("Email", text: $email)
                .modifier(IGCTextModifier())
                .padding(.vertical)
            
            NavigationLink {
                 SignUpUserNameView()
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

struct SignUpEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmailView()
    }
}
