//
//  DinamikListeleme.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct DinamikListeleme: View {
    
    @State private var ulkeListei = [String]()
    @State private var ulkeListei2 = [Ulkeler]()
    
    var body: some View {
        
        //MARK: - ÖRNEK-1: Temel Listeleme
        List {
            ForEach(ulkeListei, id:\.self) { ulke in // id:\.self ile identifiable yaptık
                Label(ulke, systemImage: "flag")
                    .onTapGesture {
                        print("Seçilen Ülke: \(ulke)")
                    }
            }
            
        }.onAppear {
            ulkeListei.append("Türkiye")
            ulkeListei.append("İtalya")
            ulkeListei.append("Japonya")
        }.navigationTitle("Ülkeler")
            
        
        
        //MARK: - ÖRNEK-2: NESNE TABALI
        List {
            ForEach(ulkeListei2) { ulke2 in  //Ulke modelilini identifiable yaptığımız için id:\.self eklememize gerek kalmadı
                UlketItem(ulke: ulke2)
                    .onTapGesture {
                        print("Seçilen Ülke: \(ulke2.ulkeAdi!)")
                    }
            }
        }.onAppear {
            var liste = [Ulkeler]()
            liste.append(Ulkeler(ulkeAdi: "Rusya", bayrak: "flag"))
            liste.append(Ulkeler(ulkeAdi: "Amerika", bayrak: "flag"))
            liste.append(Ulkeler(ulkeAdi: "Çin", bayrak: "flag"))
            
            ulkeListei2 = liste
        }
    }
}

//MARK: Item Tasarımı
struct UlketItem: View {
    
    var ulke = Ulkeler()
    
    var body: some View {
        Label(ulke.ulkeAdi!, systemImage: ulke.bayrak!)
            .foregroundColor(.blue)
            .padding()
    }
}
//MARK: Ulke modelini oluştuma (identifiable yapmalıyız)
class Ulkeler: Identifiable {
    var ulkeAdi: String?
    var bayrak: String?
    
    init(ulkeAdi: String? = nil, bayrak: String? = nil) {
        self.ulkeAdi = ulkeAdi
        self.bayrak = bayrak
    }
}

#Preview {
    DinamikListeleme()
}
