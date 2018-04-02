//
//  Resturant.swift
//  HackwichEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Caitlin. All rights reserved.
//

import UIKit
import MapKit

class Resturant: NSObject, MKAnnotation {

//create 3 variable hold data for the annotation
    let resturantTitle: String?
    let resturantType: String
    let coordinate: CLLocationCoordinate2D

//initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.resturantTitle = title
        self.resturantType = type
        self.coordinate = coordinate
        
        super.init()
    }
   
    var subtitle: String? {
        return resturantType
    }
    
    
    
}
