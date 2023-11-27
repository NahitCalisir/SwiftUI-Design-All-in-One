//
//  ListeUzerindekiNesneyeTıklama.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ListeUzerindekiNesneyeTiklama: View {
    
    @State private var ulkeListei2 = [UlkeModel]()
    
    var body: some View {
        
        List {
            ForEach(ulkeListei2) { ulke2 in  //Ulke modelilini identifiable yaptığımız için id:\.self eklememize gerek kalmadı
                UlketItem2(ulke: ulke2)
                    .onTapGesture {
                        print("Seçilen Ülke: \(ulke2.ulkeAdi!)")
                    }
            }
        }.onAppear {
            var liste = [UlkeModel]()
            liste.append(UlkeModel(ulkeAdi: "Rusya", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Amerika", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Çin", bayrak: "flag"))
            
            ulkeListei2 = liste
        }
    }
}

//Item Tasarımı
struct UlketItem2: View {
    
    var ulke = UlkeModel()
    
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


#Preview {
    ListeUzerindekiNesneyeTiklama()
}
