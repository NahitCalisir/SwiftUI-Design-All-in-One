//
//  ListeUzerindeKaydirma.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ListeUzerindeKaydirma: View {
    
    @State private var ulkeListei2 = [UlkeModel]()
    
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
            var liste = [UlkeModel]()
            liste.append(UlkeModel(ulkeAdi: "Rusya", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Amerika", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Çin", bayrak: "flag"))
            
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
    
    var ulke = UlkeModel()
    
    var body: some View {
        
        Label(ulke.ulkeAdi!, systemImage: ulke.bayrak!)
    }
}


#Preview {
    ListeUzerindeKaydirma()
}
