//
//  LoginView.swift
//  Insta
//
//  Created by Krishna on 14/07/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var regViewModel: RegistrationViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image("instaName")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200 )
                
                VStack(spacing: 20){
                    Group{
                        TextField("Enter your email", text: $email)
                            .textInputAutocapitalization(.words)
                        SecureField("Password", text: $password)
                    }
                    .modifier(IGCTextModifier())
                        
                }
                
                VStack{
                    Button {
                         
                    } label: {
                        Text("Forger password?")
                            .font(.footnote)
                        
                    }.frame(maxWidth: .infinity,alignment: .trailing)
                        .padding(.trailing)
                        .padding(.vertical)
                    
                    Button {
                         
                    } label: {
                        Text("Login")
                            .modifier(IGCButtonModifier())
                        
                    }
                        
                    
                    HStack(spacing: 5){
                        Rectangle()
                            .frame(width: 150, height: 1)
                        Text("or")
                            .font(.footnote)
                        Rectangle()
                            .frame(width: 150, height: 1)
                    }
                    .foregroundColor(Color.gray)
                    .padding(.vertical)

                    Button {
                         
                    } label: {
                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20)
                            .clipShape(Circle())
                        Text("Continue with facebook")
                            .font(.footnote)
                    }
                    
                    
                }
                
                Spacer()
                NavigationLink {
                    SignUpEmailView()
                        
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                }.foregroundColor(Color(.systemBlue))
                    .font(.system(size: 15))
                    .padding(.bottom)


                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
