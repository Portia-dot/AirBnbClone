//
//  ListingItemView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-17.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing2",
    "listing3",
    "listing4",
    "listing5",
    ]
    
    var body: some View {
        VStack(spacing: 8){
            //Images
            ListingImageView()
            .frame(height: 270)
            .clipShape(RoundedRectangle(cornerRadius: 12) )
            .tabViewStyle(.page)
            
            //Listing Details
            HStack (alignment: .top){
                //Details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Professional Host")
                        .foregroundColor(.gray)
                    
                    Text("19-24 Nov")
                        .foregroundStyle(.gray)
                    
                    HStack{
                        Text("671 CAD")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //Rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.68")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
