//
//  YatayListele.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct YatayListele: View {
    var body: some View {
        
        ScrollView (.horizontal) {
            LazyHStack {
                
                YatayItemTasarim(resim: "sun.min", isim: "GÜneş").onTapGesture {}
                YatayItemTasarim(resim: "moon", isim: "Ay").onTapGesture {}
                YatayItemTasarim(resim: "star", isim: "Yıldız").onTapGesture {}
                YatayItemTasarim(resim: "person", isim: "User").onTapGesture {}
                YatayItemTasarim(resim: "mail", isim: "Mail").onTapGesture {}
                YatayItemTasarim(resim: "car", isim: "Araba").onTapGesture {}
                YatayItemTasarim(resim: "gear", isim: "Ayarlar").onTapGesture {}
                YatayItemTasarim(resim: "trash", isim: "Çöp").onTapGesture {}
                YatayItemTasarim(resim: "camera", isim: "Kamera").onTapGesture {}
            }
            .navigationTitle("Yatay Listeleme")
                .navigationBarTitleDisplayMode(.large)
        }.padding()
    }
}


//MARK:  - Item tasarım
struct YatayItemTasarim: View {
    
    var resim = ""
    var isim = ""
    
    var body: some View {
        VStack {
            Image(systemName: resim)
            Text(isim)
            
        }.frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.height / 3 )
            .border(.red, width: 5)
            .background(.pink)
        
    }
}

#Preview {
    YatayListele()
}
