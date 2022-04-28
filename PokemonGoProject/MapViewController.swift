//
//  MapViewController.swift
//  PokemonGoProject
//
//  Created by Alex Hotca on 4/28/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var currentLocation:CLLocation!
    var pokemon: [MKMapItem] = []
    var gyms: [MKMapItem] = []
    var initialRegion: MKCoordinateRegion!
    var isInitialLoad = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    


}
