//
//  InsetMapView.swift
//  Africa
//
//  Created by Max Herrera on 9/22/22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    // MARK: - PROPERTIES
    let animal: Animal
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mapping.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } //: NAVIGATION
                    .padding(12),
                alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetMapView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
