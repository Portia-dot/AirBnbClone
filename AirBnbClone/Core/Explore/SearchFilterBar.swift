//
//  SearchFilterBar.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI

struct SearchFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where To")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add Guest")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }

        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

struct SearchFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterBar()
    }
}
