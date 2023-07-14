//
//  SearchView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchTerm : String = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(0...3, id: \.self){ _ in
                    
                    HStack{
                        Image("ironManRobo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Iron Man")
                                .font(.footnote)
                                .fontWeight(.heavy)
                            Text("I am a bad man")
                                .font(.footnote)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                }
            }
            
            .searchable(text: $searchTerm)
            
            .navigationTitle(Text("Search"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
