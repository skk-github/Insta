//
//  MainTabbarView.swift
//  Insta
//
//  Created by Krishna on 13/07/23.
//

import SwiftUI

struct MainTabbarView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Home Feed")
                .tabItem {
                    Image(systemName: "plus.rectangle.fill")
                }
            
            LoginView()
                .tabItem {
                    Image(systemName: "heart.fill")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

struct MainTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbarView()
    }
}
