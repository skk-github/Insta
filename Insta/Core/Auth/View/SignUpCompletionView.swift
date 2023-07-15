//
//  SignUpCompletionView.swift
//  Insta
//
//  Created by Krishna on 15/07/23.
//

import SwiftUI

struct SignUpCompletionView: View {
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("Welcome to Instagram, Santhanakrishna")
                .font(.title)
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
                .padding(.horizontal)
            
            Text("You will use this email to sign in to yout account from this very secomd. simply filling text.")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .padding()
            
            Button {
                 
            } label: {
                Text("Complete Sign Up")
                    .modifier(IGCButtonModifier())
            }

        }
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .frame(width: 30)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
}

struct SignUpCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpCompletionView()
    }
}
