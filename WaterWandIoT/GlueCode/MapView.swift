//
//  MapView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 1/26/21.
//

import SwiftUI
import Mapbox

extension MGLPointAnnotation {
    convenience init(title: String, coordinate: CLLocationCoordinate2D) {
        self.init()
        self.title = title
        self.coordinate = coordinate
    }
}

struct MapView: UIViewRepresentable {
    @Binding var annotations: [MGLPointAnnotation]
    
    let devices = Bundle.main.decode("DummyData.json")
    
    private let mapView: MGLMapView = MGLMapView(frame: .zero, styleURL: MGLStyle.streetsStyleURL)
    
    // MARK: - Configuring UIViewRepresentable protocol
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MGLMapView {
        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ uiView: MGLMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnotations()
    }
    
    func makeCoordinator() -> MapView.Coordinator {
        Coordinator(self)
    }
    
    // MARK: - Configuring MGLMapView
    
    func styleURL(_ styleURL: URL) -> MapView {
        mapView.styleURL = styleURL
        return self
    }
    
    func centerCoordinate(_ centerCoordinate: CLLocationCoordinate2D) -> MapView {
        mapView.centerCoordinate = centerCoordinate
        return self
    }
    
    func zoomLevel(_ zoomLevel: Double) -> MapView {
        mapView.zoomLevel = zoomLevel
        return self
    }
    
    private func updateAnnotations() {
        if let currentAnnotations = mapView.annotations {
            mapView.removeAnnotations(currentAnnotations)
        }
        mapView.addAnnotations(annotations)
    }
    
    class DeviceAnnotation: MGLPointAnnotation {
        
        var depth: Double!
        var temperature: Double!
        var conductivity: Int!
        var turbidity: Int!
        
    }

    func addAnnotations(device: Device) {
        let point = DeviceAnnotation()
        
        point.coordinate = CLLocationCoordinate2D(latitude: device.latitude, longitude: device.longitude)
        point.title = device.id
        point.depth = device.depth
        point.temperature = device.temperature
        point.conductivity = device.conductivity
        point.turbidity = device.turbidity
        
        mapView.addAnnotation(point)
        mapView.selectAnnotation(point, animated: true)
        
    }
    
    func filterButtonSelectedAtIndex(_ index: Int) {
        
        if let currentAnnotations = mapView.annotations {
            mapView.removeAnnotations(currentAnnotations)
        }
        
        for _device in devices {
            if index ==  1 {
                addAnnotations(device: _device)
                break
            }
            if index == 2 {
                addAnnotations(device: _device)
            }
        }
        
        
    }
    
    // MARK: - Implementing MGLMapViewDelegate
    
    final class Coordinator: NSObject, MGLMapViewDelegate {
        var control: MapView
        
        init(_ control: MapView) {
            self.control = control
        }
        
        func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {

// To Create a fill in layer example
//            let coordinates = [
//                CLLocationCoordinate2D(latitude: 37.791329, longitude: -122.396906),
//                CLLocationCoordinate2D(latitude: 37.791591, longitude: -122.396566),
//                CLLocationCoordinate2D(latitude: 37.791147, longitude: -122.396009),
//                CLLocationCoordinate2D(latitude: 37.790883, longitude: -122.396349),
//                CLLocationCoordinate2D(latitude: 37.791329, longitude: -122.396906),
//            ]
//
//            let buildingFeature = MGLPolygonFeature(coordinates: coordinates, count: 5)
//            let shapeSource = MGLShapeSource(identifier: "buildingSource", features: [buildingFeature], options: nil)
//            mapView.style?.addSource(shapeSource)
//
//            let fillLayer = MGLFillStyleLayer(identifier: "buildingFillLayer", source: shapeSource)
//            fillLayer.fillColor = NSExpression(forConstantValue: UIColor.blue)
//            fillLayer.fillOpacity = NSExpression(forConstantValue: 0.5)
//
//            mapView.style?.addLayer(fillLayer)

        }
        
        func mapView(_ mapView: MGLMapView, imageFor annotation: MGLAnnotation) -> MGLAnnotationImage? {
            
            var annotationImage = mapView.dequeueReusableAnnotationImage(withIdentifier: "waterlogotiny2")
            
            if annotationImage == nil {
                var image = UIImage(named: "waterlogotiny2")!
                
                annotationImage = MGLAnnotationImage(image: image,reuseIdentifier: "waterlogotiny2")
            }
            
            return annotationImage
            
        }
         
        func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
            return true
        }
        
    }
 
}


