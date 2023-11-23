//
//  ListingDetailContentView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct ListingDetailContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text("Mountian Paradise With Private Hot")
                .font(.headline)
                .fontWeight(.semibold)
            
            Text("Entire Home In Kimberly, Canada")
                .font(.footnote)
                .bold()
            
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.79")
                    Text("-")
                    Text("3 Reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
                .foregroundStyle(.black)
            }
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Text("10 guest. ")
                    Text("4 bedrooms")
                    Text("5 beds")
                    Text("3 bathrooms")
                }
                .font(.caption)
                .foregroundStyle(.black)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ListingDetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailContentView()
    }
}
