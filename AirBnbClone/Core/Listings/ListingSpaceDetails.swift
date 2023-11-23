//
//  ListingSpaceDetails.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI

struct ListingSpaceDetails: View {
    @Binding var showDetail: Bool
    var body: some View {
        VStack(alignment: .leading ,spacing: 10) {
            HStack{
                Spacer()
                Button {
                    showDetail = false
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.large)
                        .accessibility(label: Text("Close"))
                        .padding()
                        .foregroundStyle(.black)
                }

            }
            ScrollView{
                VStack(spacing: 10){
                    Text("About This Space")
                        .font(.footnote)
                        .bold()
                    
                    Text("Ideal All-Season Retreat: Whether you're hitting the slopes in the winter, shredding mountain bike trails in the summer, or simply seeking relaxation, our chalet is the perfect home base for your Kimberley adventures.")
                    
                    
                    Text("The space")
                        .bold()
                    
                    Text("Here Are A Few Kind Words From Our Past Guests")
                    
                    Text("The home was even better than the photos. Lovely furnishings and super comfortable beds. From a technology perspective, the home had everything we wanted and more. The community pool was amazing and a short walk from the house. Tony and Tracy were very helpful and a joy to deal with. Would return to the house without hesitation. - Lynn Aug 2023.")
                    
                    Text("☆☆ BEDROOMS ☆☆")
                        .bold()
                    
                    Text(" This home features four clean, private bedrooms allowing for ultimate privacy and peaceful rest during your mountain stay. Simply decorated, all of the bedrooms are sure to please. You'll find the following sleeping arrangements:")
                    
                    Text("Other things to note")
                        .font(.footnote)
                        .bold()
                    Text("Please be mindful of our neighbours during your stay. Our property's quiet hours are in place to ensure that everyone can enjoy a peaceful night's sleep. We value good relationships with our neighbours.")
                }
            }
            .font(.footnote)
            .padding()
            
        }
        
    }
    
}

struct ListingSpaceDetails_Previews: PreviewProvider {
    static var previews: some View {
        ListingSpaceDetails(showDetail: .constant(true))
    }
}
