//
//  DinamikGridListeleme.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 27.11.2023.
//

import SwiftUI

struct DinamikGridListeleme: View {
    
    @State private var ulkeListesi = [UlkeModel]()
    
    var body: some View {
        NavigationStack {
            
            //Ekrana oranlamak için geometryReader kullandık. UIScreen.main.bounds ilede yapabilirdik
            GeometryReader(content: { geometry in
                let ekranGenisligi = geometry.size.width
                let itemGenisliği = (ekranGenisligi - 60) / 2
                
                ScrollView {
                    //İstediğimiz kolon sayısı kadar GridItem ekliyoruz
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 0 ){
                        ForEach(ulkeListesi) { ulke in
                            DinamikGridItemTasarim(ulke: ulke, genislik: itemGenisliği, yukseklik: itemGenisliği )
                        }.padding()
                    }.background(.white)
                        .cornerRadius(10)
                }.navigationTitle("Ülkeler")
                    
            }).background(.blue)
        }.onAppear {
            var liste = [UlkeModel]()
            let u1 = UlkeModel(ulkeAdi: "Türkiye", bayrak: "flag")
            let u2 = UlkeModel(ulkeAdi: "Almanya", bayrak: "flag")
            let u3 = UlkeModel(ulkeAdi: "Hollanda", bayrak: "flag")
            let u4 = UlkeModel(ulkeAdi: "Japonya", bayrak: "flag")
            let u5 = UlkeModel(ulkeAdi: "Hindistan", bayrak: "flag")
            let u6 = UlkeModel(ulkeAdi: "Fransa", bayrak: "flag")
            liste.append(u1)
            liste.append(u2)
            liste.append(u3)
            liste.append(u4)
            liste.append(u5)
            liste.append(u6)
            ulkeListesi = liste
        }
    }
}

struct DinamikGridItemTasarim: View {
    
    var ulke = UlkeModel()
    var genislik = CGFloat()
    var yukseklik = CGFloat()
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: "flag").resizable().frame(width: 50, height: 50).foregroundColor(.white)
            Text(ulke.ulkeAdi!).foregroundStyle(.white).font(.system(size: 30)).bold()
            
        }.frame(width: genislik, height: yukseklik)
            .background(.gray)
            .cornerRadius(10)
        
    }
}

#Preview {
    DinamikGridListeleme()
}
