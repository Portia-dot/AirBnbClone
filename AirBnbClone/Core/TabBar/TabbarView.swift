//
//  TabbarView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            ExploreView()
                .tabItem{
                    Label{
                        Text("Explore")
                            .font(.headline)
                            .foregroundStyle(.pink)
                    }icon: {
                        Image(systemName: "magnifyingglass")
                    }
                }
                .tag(1)
            
            // MARK: - WishList
            Wishlist()
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                        .modifier(TabItemStyle(isSelected: selectedTab == 2))
                }
                .tag(2)
            
            //MARK: - Trips
            TripsView()
                .tabItem{
                    Label{
                        Text("Trips")
                            .font(.headline)
                            .foregroundStyle(.pink)
                    }icon: {
                        Image(systemName: "airplane")
                    }
                }
                .tag(3)
            
            //MARK: - Inbox
            
            InboxView()
                .tabItem{
                    Label{
                        Text("Inbox")
                            .font(.headline)
                            .foregroundStyle(.pink)
                    }icon: {
                        Image(systemName: "tray.fill")
                    }
                }
                .tag(4)
            
            //MARK: - Profile
            
            ProfileView()
                .tabItem{
                    Label{
                        Text("Profile")
                            .font(.headline)
                    }icon: {
                        Image(systemName: "person.fill")
                            
                    }
                }
                .tag(5)
        }
        .accentColor(.pink)
    }
        
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}


struct TabItemStyle: ViewModifier {
    var isSelected: Bool
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(isSelected ? .pink : .gray)
    }
}
