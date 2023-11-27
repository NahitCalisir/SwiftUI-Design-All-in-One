//
//  ListeUzerindekiNesneyeTıklama.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ListeUzerindekiNesneyeTiklama: View {
    
    @State private var ulkeListei2 = [Ulkeler]()
    
    var body: some View {
        
        List {
            ForEach(ulkeListei2) { ulke2 in  //Ulke modelilini identifiable yaptığımız için id:\.self eklememize gerek kalmadı
                UlketItem2(ulke: ulke2)
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

//Item Tasarımı
struct UlketItem2: View {
    
    var ulke = Ulkeler()
    
    var body: some View {
        HStack {
            Label(ulke.ulkeAdi!, systemImage: ulke.bayrak!)
            Spacer()
            //MARK: - burada eklediğimiz texte tıklanma özelliği ekliyoruz
            Text("Seç").foregroundStyle(.red)
                .onTapGesture {
                    print(ulke.ulkeAdi!)
                }
        }
    }
}
//Ulke modelini oluştuma (identifiable yapmalıyız)
class Ulkeler2: Identifiable {
    var ulkeAdi: String?
    var bayrak: String?
    
    init(ulkeAdi: String? = nil, bayrak: String? = nil) {
        self.ulkeAdi = ulkeAdi
        self.bayrak = bayrak
    }
}
    

#Preview {
    ListeUzerindekiNesneyeTiklama()
}
