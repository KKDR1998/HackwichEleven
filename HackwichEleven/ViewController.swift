//
//  ViewController.swift
//  HackwichEleven
//
//  Created by User on 4/18/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

//needed to use the map
import MapKit

//Puts the user on the map; taps into geographical location and core location framework
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    //UHWO lat long: 21.356522325850733, -158.05621900337144
    
    //set up initial location (lat, long) for our map
    let initialLocation = CLLocation(latitude: 21.356522325850733, longitude: -158.05621900337144)
    
    
    //declare a region radius around our initialLocation; the circle. Distance is in meters.
    let regionRadius: CLLocationDistance = 10000
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //the insturctions to use the function; calling the function.
        centerMapOnLocation(location: initialLocation)
        
        
        //add annotation in viewDidLoad; holding the data for restaurantAnnotation
        let restaurantOne = restaurantAnnotation (title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.346370, longitude: -158.080098))
        
        //
        mapView.addAnnotation(restaurantOne)
        
    }
    
    //function to focus on the radius and zoom on the location.
    func centerMapOnLocation(location: CLLocation){
        
        //creating a co-ordinate region to display a specific region on the map
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        //setting the map view on the coordinate that was just created
        mapView.setRegion(coordinateRegion, animated: true)
        
    }



}

