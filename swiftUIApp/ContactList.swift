//
//  ContactList.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 04/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI

struct ContactList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(userData.contacts) { contact in
                    if !self.userData.showFavoritesOnly || contact.isFavorite {
                        NavigationLink(destination: ContactDetail(contact: contact)){
                            ContactRow(contact: contact)
                        }
                    }
                }
                
            }
            .navigationBarTitle(Text("Contacts"))
        }
    }
}


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
            .environmentObject(UserData())
            .previewDevice("iPhone 11 Pro")
    }
}

//struct ContactList_Previews: PreviewProvider {
//    static var previews: some View {
//        ForEach(["iPhone 11 Pro", "iPad Pro (9.7-inch)"], id: \.self){ deviceName in
//            ContactList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
//    }
//}
