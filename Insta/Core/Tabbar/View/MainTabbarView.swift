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
            Text("Home Feed")
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            Text("Home Feed")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Home Feed")
                .tabItem {
                    Image(systemName: "plus.rectangle.fill")
                }
            
            Text("Home Feed")
                .tabItem {
                    Image(systemName: "heart.fill")
                }
            
            Text("Home Feed")
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
