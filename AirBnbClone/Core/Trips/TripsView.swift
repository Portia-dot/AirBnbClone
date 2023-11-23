//
//  TripsView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct TripsView: View {
    var body: some View {
        ScrollView{
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray)
                    .background(Color.white.cornerRadius(10))
                    .frame(width: 310, height: 250)
                
                VStack (spacing: 15) {
                    Image(systemName: "hands.clap")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.pink)
                    
                    Text("No Trips Booked ...Yet!")
                        .font(.subheadline)
                        .fontWeight(.black)
                    Text("Time to dust of your bag and start planing your next adventure")
                        .foregroundStyle(.gray)
                        .font(.footnote)
//                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    Button {
                        
                    } label: {
                        Text("Start Searching")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .bold()
                            .frame(width: 240, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                
            }
            .padding()
            Spacer()
            
            VStack(alignment: .leading, spacing: 7) {
                Text("Where you've been")
                    .font(.subheadline)
                    .fontWeight(.black)
                
                ForEach(0 ..< 5){ feature in
                    HStack{
                        Image("listing3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            /.padding(.vertical)
                        VStack(alignment:.leading){
                            Text("Battleford")
                                .font(.footnote)
                                .fontWeight(.black)
                            Text("Hosted by Gloria")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                            Text("16 Jun 2023 - 24 Jun 2023")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                            
                    }
                }
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Trips")
        .padding()
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
