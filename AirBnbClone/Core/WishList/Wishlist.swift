//
//  Wishlist.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct Wishlist: View {
    var body: some View {
        VStack{
            Text("WishList")
                .font(.subheadline)
                .fontWeight(.black)
                .padding()
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .foregroundStyle(.pink)
        }
    }
}

struct Wishlist_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist()
    }
}
