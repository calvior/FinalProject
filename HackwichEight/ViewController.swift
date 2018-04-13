//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Caitlin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {


    @IBOutlet var mapView: MKMapView!

    @IBOutlet weak var mapTitleOne: UINavigationItem!
    //set intial location to Ala Moana
    let initialLocation = CLLocation (latitude: 21.291513 , longitude: -157.843479)

    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 15000
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        //this function centers the map around the CLLocation by setting the coordinate region and set the region of the map
        
        self.navigationItem.title = "Eatery Locations"
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
     
        //call centerMapOnLocation function to display the map when it first opens
        centerMapOnLocation(location: initialLocation)
        
        //create an Restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Resturant(title: "Kalapawai", type: "Kalapawai", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

