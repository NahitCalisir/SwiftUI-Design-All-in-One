//
//  ListeUzerindeKaydirma.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ListeUzerindeKaydirma: View {
    
    @State private var ulkeListei2 = [Ulkeler]()
    
    var body: some View {
        
        List {
            ForEach(ulkeListei2) { ulke2 in
                UlketItem3(ulke: ulke2)
                    .onTapGesture {
                        print("Seçilen Ülke: \(ulke2.ulkeAdi!)")
                    }
            //MARK: -  KAYDIRMA İŞLEMİ İLE SİLME
            }.onDelete(perform: sil )
        }.onAppear {
            var liste = [Ulkeler]()
            liste.append(Ulkeler(ulkeAdi: "Rusya", bayrak: "flag"))
            liste.append(Ulkeler(ulkeAdi: "Amerika", bayrak: "flag"))
            liste.append(Ulkeler(ulkeAdi: "Çin", bayrak: "flag"))
            
            ulkeListei2 = liste
        }
    }
    
    //MARK: - SİLME FONKSİYONU
    func sil(at offsets: IndexSet) {
        //Hangi ülkenin silineceğini yazdırmak için, silme işleminden önce yapmak lazım.
        let ulke = ulkeListei2[offsets.first!]
        print("Silinen Ülke: \(ulke.ulkeAdi!)")
        //Silme işlemi
        ulkeListei2.remove(atOffsets: offsets)
        
    }
}



//Item Tasarımı
struct UlketItem3: View {
    
    var ulke = Ulkeler()
    
    var body: some View {
        
        Label(ulke.ulkeAdi!, systemImage: ulke.bayrak!)
    }
}
//Ulke modelini oluştuma (identifiable yapmalıyız)
class Ulkeler3: Identifiable {
    var ulkeAdi: String?
    var bayrak: String?
    
    init(ulkeAdi: String? = nil, bayrak: String? = nil) {
        self.ulkeAdi = ulkeAdi
        self.bayrak = bayrak
    }
}

#Preview {
    ListeUzerindeKaydirma()
}
