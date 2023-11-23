//
//  BedroomView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI

struct BedroomView: View {
    var bedroom: Bedroom
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
                .background(Color.white.cornerRadius(10))
                .frame(width: 200, height: 150)
            VStack(alignment: .leading){
                Image(systemName:  "bed.double.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                Text(bedroom.name)
                    .font(.footnote)
                    .bold()
                Text(bedroom.bedType)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
            }
//            .padding()
            
        }
    }
}

struct BedroomView_Previews: PreviewProvider {
    static var previews: some View {
        BedroomView(bedroom:Bedroom(id: 1, name: "Preview Bedroom Bedroom", bedType: "1 king bed") )
    }
}
