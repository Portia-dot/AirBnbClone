//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-21.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    @State private var guestNumber = 0
    
    
    enum DestinationSearchOption {
        case location
        case dates
        case guests
    }
    
    @State private var selectedOptions: DestinationSearchOption = .location
    
    var body: some View {
        VStack{
            HStack {
                Button {
                    withAnimation(.easeInOut) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                if !destination.isEmpty{
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            
            VStack(alignment: .leading){
                if selectedOptions == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else{
                    destinationSearchExtratedView(text1: "Where", text2: "Add Destination")
                }
            }
            .modifier(DestinationViewModifier())
            .frame(height: selectedOptions == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.easeInOut){
                    selectedOptions = .location
                }
            }
            
            
            
            VStack(alignment: .leading) {
                if selectedOptions == .dates{
                    Text("When is your trip")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }else{
                    destinationSearchExtratedView(text1: "When", text2: "Add Dates")
                    
                }
            }
            .modifier(DestinationViewModifier())
            .frame(height: selectedOptions == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.easeInOut){
                    selectedOptions = .dates
                }
            }
            
            
            
            //Guest View
            VStack(alignment: .leading){
                if selectedOptions == .guests {
                    Text("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(guestNumber) Adult")
                    }onIncrement: {
                        guestNumber += 1
                    } onDecrement: {
                        guard guestNumber > 0 else {return}
                        guestNumber -= 1
                    }
                }else{
                    destinationSearchExtratedView(text1: "Who", text2: "Add Guest")
                }
            }
            .modifier(DestinationViewModifier())
            .frame(height: selectedOptions == .guests ? 120 : 64)

            .onTapGesture {
                withAnimation(.easeInOut){
                    selectedOptions = .guests
                }
            }
            Spacer()
        }
        
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(show: .constant(true))
    }
}

struct destinationSearchExtratedView: View {
    var text1 : String
    var text2 : String
    var body: some View {
        VStack{
            HStack{
                Text(text1)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(text2)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        
    }
}


struct DestinationViewModifier : ViewModifier{
    func body(content: Content) -> some View{
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
        
    }
}
