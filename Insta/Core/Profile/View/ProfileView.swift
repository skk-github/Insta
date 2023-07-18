//
//  ProfileView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    let column = [GridItem(.flexible(),spacing: 2), GridItem(.flexible(),spacing: 2), GridItem(.flexible(),spacing: 2)]
    
    var body: some View {
        NavigationView {
            VStack{
                
                //profile row
                HStack{
                    Image("ironManRobo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110)
                        .clipShape(Circle())
                    Spacer(minLength: 20)
                    HStack(spacing:20){
                        VStack{
                            Text("3")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Post")
                                .font(.footnote)
                        }.frame(width: 70)
                        VStack{
                            Text("31")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 70)
                        VStack{
                            Text("43")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 70)
                    }
                    .padding(.trailing)
                }.padding(.bottom)
                
                VStack(alignment: .leading){
                    Text("Iron man")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("I am ironman")
                        .font(.footnote)
                }.frame(maxWidth:.infinity,alignment: .leading)
                    .padding(.horizontal)
                
                
                
                Button {
                     
                } label: {
                    Text("Edit Profile")
                        .foregroundColor(.black)
                        .frame(height: 30)
                        .frame(maxWidth:.infinity)
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.black, lineWidth: 1)
                        }
                        .padding(.horizontal)
                        
                }
                
                ScrollView {
                    LazyVGrid(columns: column,spacing: 2) {
                        ForEach(0...35, id:\.self){ _ in
                            
                            Image("magneto")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                
                            
                        }
                    }.padding(.horizontal, 3)
                        .padding(.top, 20)
                     
                    
                    
                    .navigationTitle(Text("Profile"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(){
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "line.3.horizontal")
                                .onTapGesture {
                                    Task{
                                        try await AuthServices.shared.signOut()
                                    }
                                    
                                }
                        }
                        
                        
                    }
                }
//                    .toolbar(c)
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
