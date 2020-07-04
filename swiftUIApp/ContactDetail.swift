//
//  HomeView.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 03/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI

struct ContactDetail: View {
    var contact: Contact
    
    var body: some View {
        VStack{
            MapView(coordinate: contact.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: contact.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(contact.park)
                        .font(.subheadline)
                    Spacer()
                    Text(contact.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }.navigationBarTitle(Text(contact.name), displayMode: .inline)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: contactsData[1])
    }
}
