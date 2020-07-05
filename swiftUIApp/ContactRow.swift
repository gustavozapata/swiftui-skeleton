//
//  ContactRow.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 04/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack{
            contact.image.resizable().frame(width: 50, height: 50)
            Text(contact.name)
            Spacer()
            
            if contact.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContactRow(contact: contactsData[0])
            ContactRow(contact: contactsData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
