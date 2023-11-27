//
//  SabitGridListele.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct SabitGridListele: View {
    var body: some View {
        ScrollView {
            //Scroll View ile çalışıyor
            LazyVGrid(columns: [GridItem(.flexible()),//MARK: istediğimiz kolon sayısı kadar GridItem Ekliyoruz !!!
                                GridItem(.flexible()),
                                GridItem(.flexible())
                               ],spacing: 20) {
                
                GridItemTasarim(resim: "sun.min", isim: "GÜneş").onTapGesture {}
                GridItemTasarim(resim: "moon", isim: "Ay").onTapGesture {}
                GridItemTasarim(resim: "star", isim: "Yıldız").onTapGesture {}
                GridItemTasarim(resim: "person", isim: "User").onTapGesture {}
                GridItemTasarim(resim: "mail", isim: "Mail").onTapGesture {}
                GridItemTasarim(resim: "car", isim: "Araba").onTapGesture {}
                GridItemTasarim(resim: "gear", isim: "Ayarlar").onTapGesture {}
                GridItemTasarim(resim: "trash", isim: "Çöp").onTapGesture {}
                GridItemTasarim(resim: "camera", isim: "Kamera").onTapGesture {}
                
            }.navigationTitle("Grid Listeleme")
                .navigationBarTitleDisplayMode(.large)
            
        }.padding()
            
            
    }
}

struct GridItemTasarim: View {
    
    var resim = ""
    var isim = ""
    
    var body: some View {
        VStack {
            Image(systemName: resim)
            Text(isim)
            
        }.frame(width: UIScreen.main.bounds.width / 3 - 25, height: UIScreen.main.bounds.width / 3 - 25)
            .border(.black, width: 5)
            .padding(.horizontal)
        
    }
}

#Preview {
    SabitGridListele()
}
