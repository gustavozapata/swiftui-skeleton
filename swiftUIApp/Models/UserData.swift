//
//  UserData.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 06/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var contacts = contactsData
}
