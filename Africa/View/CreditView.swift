//
//  CreditView.swift
//  Africa
//
//  Created by Max Herrera on 9/26/22.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
     Copyright © Max Herrera
     All right reserved
     Better Apps Less Code
     """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }  //: VSTACK
        .padding()
        .opacity(0.4)

    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
