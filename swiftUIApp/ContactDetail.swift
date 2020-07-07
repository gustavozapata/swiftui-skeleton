//
//  HomeView.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 03/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI

struct ContactDetail: View {
    @EnvironmentObject var userData: UserData
    var contact: Contact
    
    var contactIndex: Int {
        userData.contacts.firstIndex(where: {$0.id == contact.id})!
    }
    
    var body: some View {
        VStack{
            MapView(coordinate: contact.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: contact.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(contact.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.contacts[self.contactIndex].isFavorite.toggle()
                    }) {
                        if self.userData.contacts[self.contactIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                
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
