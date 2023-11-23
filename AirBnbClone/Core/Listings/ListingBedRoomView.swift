//
//  ListingBedRoomView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI

struct ListingBedRoomView: View {
    let bedrooms: [Bedroom] = [
        Bedroom(id: 1, name: "Bedroom 1", bedType: "1 king bed"),
        Bedroom(id: 2, name: "Bedroom 2", bedType: "1 queen bed"),
        Bedroom(id: 3, name: "Bedroom 3", bedType: "1 queen bed"),
        Bedroom(id: 4, name: "Bedroom 4", bedType: "1 king bed, 1 sofa bed")
    ]
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(bedrooms) { bedroom in
                        BedroomView(bedroom: bedroom)
                            .frame(width: 200, height: 250)
                    }
                    .padding(.bottom)
                    .padding(.horizontal)
                }
            }
    }
}

struct ListingBedRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ListingBedRoomView()
    }
}

struct Bedroom: Identifiable{
    let id: Int
    let name: String
    let bedType: String
}
