//
//  FeedrowView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct FeedrowView: View {
    var body: some View {
        
        VStack {
            HStack {
                Image("ironManRobo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
                .clipShape(Circle())
                Text("Iron man Robo")
                    .font(.footnote)
                    .fontWeight(.bold)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 8)
            
            Image("magneto")
                .resizable()
                .frame(height: 400)
            
            HStack(spacing: 20){
                Image(systemName: "heart.fill")
                Image(systemName: "bubble.right.fill")
                Image(systemName: "paperplane.fill")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 3)
            .padding(.vertical, 5)
            VStack(alignment: .leading,spacing: 8){
                Text("0 likes")
                    
                    .fontWeight(.bold)
                Text("Iron ")
                     
                    .fontWeight(.bold)
                
                +
                Text("Caption need for the mistasd asdf asdfjas;dfj a dsf  sdf  a;sdlkf k kadsf afj f")
                Text("6 hours ago")
                    .font(.caption2)
                    .foregroundColor(Color.gray)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 5)
            
        }
        .padding(.bottom, 10)
            
    }
}

struct FeedrowView_Previews: PreviewProvider {
    static var previews: some View {
        FeedrowView()
    }
}
