//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Oluwayomi M on 2023-11-18.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @State private var showingDetail = false
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageView()
                    .frame(height: 300)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }

            }
            mainContent
            Divider()
            offerSections
            Divider()
            mapView
        }
        .padding(.bottom, 64)
        .overlay(alignment:.bottom ){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("$150")
                            .bold()
                            .font(.subheadline)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 12 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 32)
                
            }
            .background(.white)
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    
    // MARK: - Scroll View Limit
    
    private var mainContent: some View{
        VStack{
            listingDetailsContent
            Divider()
            priceTagSection
            Divider()
            hostSection
            Divider()
            descriptionSection
            Divider()
            VStack(alignment: .leading) {
                Text("Where you'll sleep")
                    .font(.footnote)
                    .bold()
                ListingBedRoomView()
            }
            .sheet(isPresented: $showingDetail, content: {
                ListingSpaceDetails(showDetail: $showingDetail)
            })
            .padding()
            
//            Divider()
//            offerSections
        }
       
    }
    
    
    
    private var listingDetailsContent: some View{
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
    
    private var priceTagSection: some View{
        HStack (spacing: 10){
            Image(systemName: "tag.fill")
                .foregroundStyle(.red)
                .padding(6)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 2))
                .frame(width: 30, height: 30)
            
            
            Text("Lower Price. Your dates are 15% less than the median nightly rate of the last 60 days")
                .font(.system(size: 14))
                .fontWeight(.regular)
                .foregroundStyle(.black)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 10)
        //            .background(Color(red: 1, green: 0.9, blue: 0.9))
        .cornerRadius(8)
        .shadow(radius: 1, x: 0, y: 1)
    }
    
    private var hostSection: some View{
        HStack{
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .overlay (
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.pink),
                    //                            .offset(x: , y:0),
                    alignment: .bottomTrailing
                )
            VStack(alignment: .leading) {
                Text("Hosted By Tony And Tracy")
                    .font(.footnote)
                    .foregroundStyle(.black)
                HStack{
                    Text("Superhost")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    Text(". 5 years hosting")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
    
    
    private var amenitiesSection: some View{
        VStack(alignment: .leading, spacing: 10){
            ExtractedView(iconName: "table.furniture", titleText: "Dedicated Workspace", descriptionText: "A room with wifi that's well suited for working")
                .padding(5)
            ExtractedView(iconName: "medal", titleText: "Tony And Tracy is a Superhost", descriptionText: "Superhosts are experienced, highly rated Hosts")
                .padding(5)
            ExtractedView(iconName: "calendar", titleText: "Free cancellation for 48 hours", descriptionText: "")
                .padding(5)
        }
    }
    
    
    private var descriptionSection: some View {
        VStack(alignment: .leading){
            Text("Ideal All-Season Retreat: Whether you're hitting the slopes in the winter, shredding mountain bike trails in the summer, or simply seeking relaxation, our chalet is the perfect home base for your Kimberley adventures.")
                .font(.footnote)
                .bold()
            Button {
                showingDetail.toggle()
            } label: {
                Text("Show More")
                    .font(.footnote)
                    .underline()
                    .foregroundStyle(.black)
                    .bold()
            }
            .padding(.top)
            .padding(.bottom)
            
        }
        .padding()
    }
    
    private var offerSections: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("What this place offers")
                .font(.headline)
            ForEach(0 ..< 5){ feature in
                HStack{
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    Text("Wifi")
                        .font(.footnote)
                    Spacer()
                }
            }
        }
        .padding()
    }
    
    private var mapView: some View {
       
        
        VStack(alignment: .leading,spacing: 16) {
            Text("Where you will be")
                .font(.headline)
            Map(coordinateRegion: $region)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}


struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView()
    }
}


struct ExtractedView: View {
    let iconName: String
    let titleText: String
    let descriptionText: String
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            VStack(alignment: .leading, spacing: 2) {
                Text(titleText)
                    .font(.footnote)
                    .bold()
                Text(descriptionText)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
