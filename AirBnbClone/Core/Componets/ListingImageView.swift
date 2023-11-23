//
//  ListingImageView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI

struct ListingImageView: View {
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "listing4",
        "listing5",
    ]
    @State private var isFavorite: Bool = false
    
    var body: some View {
        TabView{
            ForEach(images, id:\.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        HStack{
                            Spacer()
                            VStack{
                                Button {
                                    
                                } label: {
                                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                                        .foregroundStyle(isFavorite ? .pink : .white)
                                        .padding(.all, 10)
                                        .background(Color.black.opacity(0.3))
                                        .clipShape(Circle())
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    isFavorite.toggle()
                                })
                                .padding(.top, 10)
                                Spacer()
                                
                            }
                        }, alignment: .topTrailing
                    )
            }
        }
        
        .tabViewStyle(.page)
    }
}

struct ListingImageView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageView()
    }
}
