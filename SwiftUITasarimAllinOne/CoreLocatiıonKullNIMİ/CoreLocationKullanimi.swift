//
//  CoreLocationKullanimi.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 3.12.2023.
//

//MARK: - İZİN ALMA İŞLEMİ yapmak gerekiyor. info dosyasına aşağıdaki satıtı ekliyoruz ve karşısına açıklama yazıyoruz.
// "Privacy - Location When In Use Usage Description" = "Açıklama metni"
// locationManager sınıfında da kod satırına "clm.requestWhenInUseAuthorization()" komudunu eklemeliyiz

import SwiftUI

struct CoreLocationKullanimi: View {
    
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("Enlem: \(locationManager.konum.coordinate.latitude)")
            Text("Boylam: \(locationManager.konum.coordinate.longitude)")
            Text("Hız: \(locationManager.konum.speed)")
        }.navigationTitle("Core Location")
    }
}

#Preview {
    CoreLocationKullanimi()
}
