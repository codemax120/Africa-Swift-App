//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Max Herrera on 9/22/22.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
    
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                
                // MARK: - HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // MARK: - TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // MARK: - HEADLINE
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // MARK: - GALLERY
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // MARK: - FACTS
                // MARK: - DESCRIPTION
                // MARK: - MAP
                // MARK: - LINK
                
            } //: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: SCROLL
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalDetailView(animal: animals[1])
    }
}
