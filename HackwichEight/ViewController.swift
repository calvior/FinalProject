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


    //created outlet 
    @IBOutlet weak var mapView: MKMapView!
    
    
    //set intial location to Ala Moana
    let initialLocation = CLLocation (latitude: 21.291513 , longitude: -157.843479)

    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 4000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        //this function centers the map around the CLLocation by setting the coordinate region and set the region of the map
        
       self.navigationItem.title = "Eatery Locations"
    
        //call centerMapOnLocation function to display the map when it first opens
        centerMapLocation(location: initialLocation)
        
        //create an Restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Resturant(title: "Buba Gump", type: "Buba Gump", coordinate: CLLocationCoordinate2D(latitude: 21.291834, longitude:  -157.842897))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Resturant(title: "Sorabol", type: "Sorabol", coordinate: CLLocationCoordinate2D(latitude: 21.296545, longitude: -157.840862))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Resturant(title: "Moku Kitchen", type: "Moku Kitchen", coordinate: CLLocationCoordinate2D(latitude: 21.299583, longitude: -157.861799))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Resturant(title: "Marukame Udon", type: "Marukame Udon", coordinate: CLLocationCoordinate2D(latitude: 21.310266, longitude: -157.861204))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Resturant(title: "Murphy's Bar & Grill", type: "Murphy's Bar & Grill", coordinate: CLLocationCoordinate2D(latitude: 21.310396, longitude: -157.863500))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Resturant(title: "Downbeat", type: "Downbeat", coordinate: CLLocationCoordinate2D(latitude: 21.311905, longitude: -157.862179))
        mapView.addAnnotation(restaurantSix)
 
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centerMapLocation(location:CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

   

}


