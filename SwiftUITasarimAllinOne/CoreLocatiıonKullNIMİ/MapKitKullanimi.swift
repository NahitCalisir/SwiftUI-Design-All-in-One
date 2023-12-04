//
//  MapKitKullanimi.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 3.12.2023.
//

import SwiftUI
import MapKit

//Helenium: 40.8997152 , 29.1879809
//Taksim: 41.0370175 , 28.974792
//Kadıköy: 40.9904715, 29.0265964

struct MapKitKullanimi: View {
   
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    
    
    var body: some View {
        Map(position: $cameraPosition) {
            
            Marker("My Location", systemImage: "paperplane", coordinate: .kadikoy)
                .tint(.blue)
        }
    }
}
  
 
extension CLLocationCoordinate2D {
    static let userLocation = CLLocationCoordinate2D(latitude: 40.8997152, longitude: 29.1879809)
    static let taksim = CLLocationCoordinate2D(latitude: 41.0370175, longitude: 28.974792)
    static let kadikoy = CLLocationCoordinate2D(latitude: 40.9904715, longitude: 29.0265964)
}

extension MKCoordinateRegion{
    static var userRegion: MKCoordinateRegion {
        return .init(center: .kadikoy, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}

//#Preview {
//    MapKitKullanimi()
//}
