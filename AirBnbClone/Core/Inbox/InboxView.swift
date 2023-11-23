//
//  Inbox.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-20.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                ForEach(0 ..< 5){ feature in
                    HStack{
                        Image("listing2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        VStack(alignment: .leading){
                            HStack{
                                Text("Gloria")
                                    .font(.footnote)
                                Text("BattleFord")
                                    .foregroundStyle(.gray)
                                    .font(.footnote)
                            }
                            HStack{
                                Text("Airbnb update: Reminder - Leave a review")
                                    .font(.footnote)
                            }
                            HStack{
                                Text("Trip Completed: 16-24 Jun")
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                        }
                        
                    }
                    .padding()
                    Divider()
                }
                
            }
            .navigationTitle("Inbox")
            Spacer()
        }
        .padding()
        
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
