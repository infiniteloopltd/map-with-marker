/*
 * Copyright 2016 Google Inc. All rights reserved.
 *
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
 * file except in compliance with the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
 * ANY KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {

 
   @IBOutlet weak var miniview: GMSMapView!
   
   override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: +31.75097946, longitude: +35.23694368, zoom: 6.0)
        miniview.camera = camera
    
        miniview.delegate = self
    
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: +31.75097946, longitude: +35.23694368)
        marker.title = "my location"
        marker.map = miniview
    
    }
    
    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
        let customMarker:CustomMarker = CustomMarker.instanceFromNib() 
        customMarker.labelText.text = marker.title
        return customMarker
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        // An Info window is rendered as an image, it will not respond to actions.
        print("Info Window Clicked On \(marker.title ?? "untitled")")
    }

}

