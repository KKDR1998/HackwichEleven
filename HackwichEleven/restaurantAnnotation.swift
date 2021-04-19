//
//  restaurantAnnotation.swift
//  HackwichEleven
//
//  Created by User on 4/18/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

//utilizing the map framework
import MapKit

class restaurantAnnotation: NSObject, MKAnnotation {
    
    //sets up the annotation itself
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init (title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    //wants the resturant title to display in the subtitle of the annoation
    var subtitle: String? {
        return restaurantTitle 
        
    }

}
