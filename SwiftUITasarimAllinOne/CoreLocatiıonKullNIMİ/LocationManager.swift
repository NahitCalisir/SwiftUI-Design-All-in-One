//
//  LocationManager.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 3.12.2023.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    var clm = CLLocationManager()
    
    @Published var konum = CLLocation()
    
    override init() {
        super.init() // üst sınıfların init metodlarını temsil ediyor
        
        
        clm.desiredAccuracy = kCLLocationAccuracyBest //Hasasiyet ayarı
        clm.requestWhenInUseAuthorization() //info dosyasına eklediğğimiz izini kodlamayada eklemeliyiz
        clm.startUpdatingLocation() //konum bilgilerini almayı başlatıyoruz. tum konumları location dizisi içerisine kaydetmeye başlıyor.
        clm.delegate = self  //CLLocationManagerDelegate 'e yetki veriyoruz. aşağıdaki fonksiyonun çalışması için.
    }
    
    //didUpdateLocations yazarak aşağıdaki fonksiyonu çağırıyoruz
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        konum = locations[locations.count - 1] //Konum dizisi içerisndeki son konumu bulma için "locations.count - 1" yazdık.
    }
}

