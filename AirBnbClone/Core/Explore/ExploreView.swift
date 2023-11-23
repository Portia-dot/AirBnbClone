//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-17.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack{
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            }else{
                VStack {
                    SearchFilterBar()
                        .onTapGesture {
                            withAnimation(.easeIn){
                                showDestinationSearchView.toggle()
                            }
                        }
                    ScrollView {
                        LazyVStack(spacing: 32){
                            ForEach(0 ... 10, id: \.self){ listing in
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                        .frame(height: 400)
                                    
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    }
                }
                
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
