//
//  Contact.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 03/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

/*
 Abstract:
 The model for an individual landmark.
 */

import SwiftUI
import CoreLocation

struct Contact: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var isFavorite: Bool
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Contact {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
