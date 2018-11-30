//
//  MapViewController.swift
//  RecetarioApp
//
//  Created by IGNACIO GALAN DE PINA on 30/11/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    internal var locationToShow: CLLocation?
    override func viewDidLoad() {
        super.viewDidLoad()

        let annotation = MKPointAnnotation()
        annotation.coordinate = (locationToShow?.coordinate)!
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegionMakeWithDistance((locationToShow?.coordinate)!, 2000, 2000)
        mapView.setRegion(region, animated: true)
    }
    convenience init(lat: Double!, lon: Double!) {
        self.init()
        self.locationToShow = CLLocation(latitude: lat, longitude:lon)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
