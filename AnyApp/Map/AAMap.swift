//
//  AAMap.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit
import MapKit

class AAMap: UIViewController {
    
    var routeData: Route?
    var routeCoordinates: [CLLocation] = []
    
    let mapView : MKMapView = {
        let map = MKMapView()
        //map.overrideUserInterfaceStyle = .dark
        return map
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapConstraints()
        
        if let routeJSON = self.getJSON() {
            parseJSON(jsonData: routeJSON)
        }
    }
    
    
    func setMapConstraints() {
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }
    
    
    func getJSON() -> Data? {
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                let data = try String(contentsOfFile: path).data(using: .utf8)
                print("Successfully returned the data! GG!")
            } catch {
                print("error, unable to read JSON")
            }
        }
        return nil
        
    }
    
    func parseJSON(jsonData: Data) {
        do {
            routeData = try JSONDecoder().decode(Route.self, from: jsonData)
            
            print(routeData)
            
            for feature in routeData?.features ?? [] {
                let loc = CLLocation(
                    latitude: feature.geometry.coordinates[1],
                    longitude: feature.geometry.coordinates[0]
                )
                routeCoordinates.append(loc)
                
            }
        } catch {
            print("Unable to parse JSON, :(")
        }
    }
    
}

extension AAMap: MKMapViewDelegate {
    
}
