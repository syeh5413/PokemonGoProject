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
    
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        if isInitialLoad {
            initialRegion = MKCoordinateRegion(center: mapView.centerCoordinate, span: mapView.region.span)
            isInitialLoad = false
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }
    
    @IBAction func whenZoomButtonPressed(_ sender: Any) {
        let myCenter = currentLocation.coordinate
        let mySpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let myRegion = MKCoordinateRegion(center: myCenter, span: mySpan)
        mapView.setRegion(myRegion, animated: true)
    }
    
    @IBAction func whenPokemonShowButtonPressed(_ sender: Any) {
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "Park"
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)
        
        search.start { myResponse, myError in
            guard let response = myResponse else { return }
            for currentMapItem in response.mapItems {
                self.pokemon.append(currentMapItem)
                let annotation = MKPointAnnotation()
                annotation.coordinate = currentMapItem.placemark.coordinate
                annotation.title = "name"
                self.mapView.addAnnotation(annotation)
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if !(annotation is MKUserLocation) {
            let pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: String(annotation.hash))
            
            let rightButton = UIButton(type: .infoLight)
            rightButton.tag = annotation.hash
            
            let randomNumber =  Int.random(in: 1...9)
            
            if randomNumber == 1 {
                pinView.image = UIImage(named: "001")
            } else if randomNumber == 2 {
                pinView.image = UIImage(named: "002")
            } else if randomNumber == 3 {
                pinView.image = UIImage(named: "003")
            } else if randomNumber == 4 {
                pinView.image = UIImage(named: "004")
            } else if randomNumber == 5 {
                pinView.image = UIImage(named: "005")
            } else if randomNumber == 6 {
                pinView.image = UIImage(named: "006")
            } else if randomNumber == 7 {
                pinView.image = UIImage(named: "007")
            } else if randomNumber == 8 {
                pinView.image = UIImage(named: "008")
            } else if randomNumber == 9 {
                pinView.image = UIImage(named: "009")
            }
            
            pinView.animatesDrop = true
            pinView.canShowCallout = true
            pinView.rightCalloutAccessoryView = rightButton
            
            return pinView
        }
        else {
            return nil
        }
    }
}
