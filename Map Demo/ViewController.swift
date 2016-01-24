//
//  ViewController.swift
//  Map Demo
//
//  Created by Mehmet Ragıp Altuncu on 23/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var lat: CLLocationDegrees = 40.966893
        
        var lon: CLLocationDegrees = 28.797935
        
        var latDelta: CLLocationDegrees = 0.01
        
        var lonDelta: CLLocationDegrees = 0.01
        
        var span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lon)
        
        var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

