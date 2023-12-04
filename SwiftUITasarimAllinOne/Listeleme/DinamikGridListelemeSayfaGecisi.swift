//
//  DinamikGridListelemeSayfaGecisi.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 27.11.2023.
//

import SwiftUI

struct DinamikGridListelemeSayfaGecisi: View {
    @State private var ulkeListesi = [UlkeModel]()
    
    var body: some View {
        NavigationStack {
            
            //Ekrana oranlamak için geometryReader kullandık. UIScreen.main.bounds ilede yapabilirdik
            GeometryReader(content: { geometry in
                let ekranGenisligi = geometry.size.width
                let itemGenisliği = (ekranGenisligi - 60) / 2
                
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "flag").resizable().frame(width: 70, height: 70).padding().foregroundColor(.mint).bold()
                        Text("Itemla Sayfa\nGeçişi").font(.largeTitle).foregroundStyle(.white).bold()
                    }
                    //DİNAMİK GRİD LİSTELE
                    ScrollView {
                        //İstediğimiz kolon sayısı kadar GridItem ekliyoruz
                        LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 10 ){
                            ForEach(ulkeListesi) { ulke in
                                //MARK: - SAYFA GEÇİŞİ (İtem link içerisinde olacak)
                                NavigationLink(destination: UlkeDetaySayfa(ulke: ulke)){
                                    
                                    DinamikGridItemTasarim(ulke: ulke, genislik: itemGenisliği, yukseklik: itemGenisliği )
                                }
                            }.padding(10)
                        }.background(.white)
                            .cornerRadius(10)
                    }
                }.navigationTitle("Ülkeler")
                    .toolbarTitleDisplayMode(.inline)
            }).background(.indigo)
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
    var genislik = CGFloat() // = 0.0 da yazabilirdik
    var yukseklik = CGFloat()
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: "flag").resizable().frame(width: 50, height: 50).foregroundColor(.brown)
            Text(ulke.ulkeAdi!).foregroundStyle(.black).font(.system(size: 30)).bold()
            
        }.frame(width: genislik, height: yukseklik)
            .background(.yellow)
            .cornerRadius(10)
        
    }
}

#Preview {
    DinamikGridListelemeSayfaGecisi()
}
