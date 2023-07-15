//
//  FeedView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(0...5,id: \.self){ _ in
                    FeedrowView()
                    
                }
            }
            
            .navigationTitle(Text("Feed"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instaName")
                        .resizable()
                        .scaledToFit()
                        .background(Color.white.opacity(0))
                    
                        .frame( height: 90)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                }
            }
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
